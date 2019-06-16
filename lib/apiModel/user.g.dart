// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      no: json['no'] as int,
      name: json['name'] as String,
      email: json['email'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'no': instance.no,
  'name': instance.name,
  'email': instance.email
};
