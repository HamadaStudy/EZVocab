import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntryPage extends StatefulWidget {
  final String title;

  const EntryPage({super.key, required this.title});

  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("EZVocab"),
            ElevatedButton(
              onPressed: () {
                context.go('/signup');
              },
              child: Text("サインアップ"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/signin');
              },
              child: Text("サインイン"),
            ),
          ],
        ),
      ),
    );
  }
}
