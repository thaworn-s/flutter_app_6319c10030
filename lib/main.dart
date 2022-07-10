import 'package:flutter/material.dart';
import 'package:flutter_app_6319c10030/views/login_ui.dart';

void  main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}