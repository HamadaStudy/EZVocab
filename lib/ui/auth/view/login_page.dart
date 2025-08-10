import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key? key, required this.title}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Email"),
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                onChanged: (value) {},
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  context.go('/home');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
