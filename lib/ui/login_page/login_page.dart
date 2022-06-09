import 'dart:developer';

import 'package:e_store_coorgle/ui/login_page/cubit/login_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/di.dart';
import '../../utils/status.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.lastRoute}) : super(key: key);
  final String? lastRoute;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKeyPhoneNo = GlobalKey<FormState>();
  final _formKeyPassword = GlobalKey<FormState>();
  late final phoneNoController = TextEditingController();
  late final codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginPageCubit>(),
      child: BlocConsumer<LoginPageCubit, LoginPageState>(
        listener: (context, state) {
          if (state.loginStatus == Status.success && state.newUser == true) {
            context.pushNamed('register');
          } else if (state.loginStatus == Status.success &&
              state.newUser == false) {
            if (widget.lastRoute != null && widget.lastRoute != '') {
              context.go(widget.lastRoute!);
            } else {
              context.goNamed('home');
            }
          }
        },
        listenWhen: (c, p) => c != p,
        builder: (context, state) {
          return Scaffold(
              body: Stack(
            children: [
              Image.asset(
                'assets/img/login_bg.jpg',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.6),
                    Form(
                        key: _formKeyPhoneNo,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: phoneNoController,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Phone number is required";
                                }
                                if (!RegExp(
                                        r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$')
                                    .hasMatch(val)) {
                                  return "Please enter a valid phone number";
                                }
                              },
                              decoration: const InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: 'Phone No',
                                  hintText: "+919946464646")),
                        )),
                    Form(
                      key: _formKeyPassword,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: codeController,
                          maxLength: 6,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "Code is required";
                            }
                            if (val.length != 6) {
                              return "Please enter a valid code";
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Code',
                              hintText: 'XXXXXX',
                              fillColor: Colors.white,
                              suffixIcon: TextButton(
                                child: const Text('Sent Code'),
                                onPressed: () {
                                  log('sent code button pressed');
                                  if (_formKeyPhoneNo.currentState
                                          ?.validate() ==
                                      true) {
                                    log("form validated");

                                    context
                                        .read<LoginPageCubit>()
                                        .sentCode(phoneNoController.text);
                                  }
                                },
                              )),
                        ),
                      ),
                    ),
                    BlocSelector<LoginPageCubit, LoginPageState, Status>(
                      selector: (state) {
                        return state.codeSentStatus;
                      },
                      builder: (context, state) {
                        return ElevatedButton(
                            onPressed: (state == Status.success)
                                ? () {
                                    log("login button pressed");

                                    if (_formKeyPassword.currentState
                                            ?.validate() ==
                                        true) {
                                      log("form validated");
                                      context
                                          .read<LoginPageCubit>()
                                          .verifyCode(codeController.text);
                                    }
                                  }
                                : null,
                            child: const Text('Login'));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
