import 'package:clean_code/app.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  runApp(MainApp(FirebaseUserRepository()));
}
