import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String id,
      String? name,
      String? email,
      String? photoUrl,
      String? phoneNo,
      @Default(0) int? cartCount}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
