import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  String accountId;
  String userId;
  String isSelfAccount;
  String userCode;
  String passWord;
  String userName;
  String sex;
  String school;
  String loginSignId;
  String gradeName;
  String className;
  String userPhoto;

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}