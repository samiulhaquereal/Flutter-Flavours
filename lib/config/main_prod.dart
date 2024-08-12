import 'package:flutter/material.dart';
import 'package:flutterflavorpractice/config/app_config.dart';
import 'package:flutterflavorpractice/main.dart';

void main() {
  AppEnvironment.setupEnv(Environment.prod);
  runApp(const MyApp());
}