import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserModel {
  String id;
  String name;
  String email;
  String gender;
  String birthday;
  bool isRemember;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.birthday,
    required this.isRemember,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'gender': gender,
      'birthday': birthday,
      'isRemember': isRemember,
      'created_at': DateTime.now(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      gender: map['gender'],
      birthday: map['birthday'],
      isRemember: map['isRemember'] ?? false,
    );
  }
}
