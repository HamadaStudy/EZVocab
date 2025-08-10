import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartUpPage extends StatefulWidget {
  final String title;

  const StartUpPage({Key? key, required this.title}) : super(key: key);

  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('start page')),
      body: Center(
        child: Column(
          children: [
            Text("EZVocab"),
            ElevatedButton(
              onPressed: () {
                context.go('/signup');
              },
              child: Text("新規登録"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: Text("ログイン"),
            ),
          ],
        ),
      ),
    );
  }
}
