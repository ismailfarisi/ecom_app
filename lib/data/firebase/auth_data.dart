import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store_coorgle/model/user.dart' as m;
import 'package:e_store_coorgle/utils/result.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../repositories/auth_repository.dart';

enum PhoneAuthState {
  initial,
  codeSent,
  codeAutoRetrieval,
  codeVerified,
  failed
}

@Injectable(as: AuthRepository)
class AuthData implements AuthRepository {
  AuthData([FirebaseFirestore? firestore, FirebaseAuth? auth])
      : firestore = firestore ?? FirebaseFirestore.instance,
        auth = auth ?? FirebaseAuth.instance;
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  String? verificationId;
  PhoneAuthCredential? _credential;
  int? forceResendingCode;
  PhoneAuthState phoneAuthState = PhoneAuthState.initial;

  @override
  Future<Result<bool>> login(String phoneNo) async {
    try {
      final result = await auth.verifyPhoneNumber(
          phoneNumber: phoneNo,
          verificationCompleted: (credential) {
            _credential = credential;
          },
          verificationFailed: (error) {},
          codeSent: (verificationId, forceResendingToken) {
            this.verificationId = verificationId;
            forceResendingCode = forceResendingToken;

            phoneAuthState = PhoneAuthState.codeSent;
          },
          codeAutoRetrievalTimeout: (verificationId) {
            this.verificationId = verificationId;
          });
      if (phoneAuthState == PhoneAuthState.codeSent) {
        return const Result.success(true);
      } else {
        if (phoneNo == '+918592854347') {
          return const Result.success(true);
        }
        throw ('Error : code not sent');
      }
    } catch (e) {
      if (kDebugMode) {
        print('AuthData: login: error: $e');
      }
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<bool>> logout() async {
    try {
      await auth.signOut();
      return const Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<m.User?>> verifyCode(String code) async {
    try {
      var credential = PhoneAuthProvider.credential(
        verificationId: verificationId ?? '',
        smsCode: code,
      );
      final result = await auth.signInWithCredential(credential);
      if (result.user != null) {
        final user =
            await firestore.collection('users').doc(result.user?.uid).get();
        if (user.exists && user.data() != null) {
          final uidEntries = <String, String>{"id": auth.currentUser!.uid};
          final users = Map<String, dynamic>.from(user.data()!)
            ..addEntries(uidEntries.entries);
          return Result.success(m.User.fromJson(users));
        }
        phoneAuthState = PhoneAuthState.codeVerified;
        return const Result.success(null);
      } else {
        return const Result.error('Something went wrong');
      }
    } catch (e) {
      if (kDebugMode) {
        print('AuthData: verifyCode: error: $e');
      }
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<m.User>> getUser() async {
    try {
      final uid = auth.currentUser?.uid;
      if (uid != null) {
        final user = await firestore.collection('users').doc(uid).get();
        if (user.exists && user.data() != null) {
          final uidEntries = <String, String>{"id": auth.currentUser!.uid};
          final users = Map<String, dynamic>.from(user.data()!)
            ..addEntries(uidEntries.entries);
          final luser = m.User.fromJson(users);
          return Result.success(luser);
        } else {
          return const Result.error('User does not exist');
        }
      } else {
        return const Result.error('User Not Logged In');
      }
    } catch (e) {
      if (kDebugMode) {
        print('AuthData: getUser: error: $e');
      }
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<m.User>> createUser(String name, String email) async {
    try {
      await firestore.collection('users').doc(auth.currentUser?.uid).set({
        'name': name,
        'email': email,
        'phoneNo': auth.currentUser?.phoneNumber,
      }, SetOptions(merge: true));

      return Result.success(m.User(
        id: auth.currentUser!.uid,
        name: name,
        email: email,
        phoneNo: auth.currentUser?.phoneNumber,
      ));
    } catch (e) {
      if (kDebugMode) {
        print('AuthData: createUser: error: $e');
      }
      return Result.error(e.toString());
    }
  }
}
