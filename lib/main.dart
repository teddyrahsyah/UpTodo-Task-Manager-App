import 'package:flutter/material.dart';
import 'package:up_todo_app/ui/pages/intro_page.dart';
import 'package:up_todo_app/ui/pages/login_page.dart';
import 'package:up_todo_app/ui/pages/register_page.dart';
import 'package:up_todo_app/ui/pages/splash_page.dart';
import 'package:up_todo_app/ui/pages/start_page.dart';

void main() {
  runApp(const UpTodoApp());
}

class UpTodoApp extends StatelessWidget {
  const UpTodoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UpTodo - Task Manager App',
      routes: {
        "/": (context) => const SplashPage(),
        "/intro": (context) => const IntroPage(),
        "/start": (context) => const StartPage(),
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage(),
      },
    );
  }
}
