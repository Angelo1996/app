// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..accountId = json['accountId'] as String
    ..userId = json['userId'] as String
    ..isSelfAccount = json['isSelfAccount'] as String
    ..userCode = json['userCode'] as String
    ..passWord = json['passWord'] as String
    ..userName = json['userName'] as String
    ..sex = json['sex'] as String
    ..school = json['school'] as String
    ..loginSignId = json['loginSignId'] as String
    ..gradeName = json['gradeName'] as String
    ..className = json['className'] as String
    ..userPhoto = json['userPhoto'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'accountId': instance.accountId,
      'userId': instance.userId,
      'isSelfAccount': instance.isSelfAccount,
      'userCode': instance.userCode,
      'passWord': instance.passWord,
      'userName': instance.userName,
      'sex': instance.sex,
      'school': instance.school,
      'loginSignId': instance.loginSignId,
      'gradeName': instance.gradeName,
      'className': instance.className,
      'userPhoto': instance.userPhoto
    };
