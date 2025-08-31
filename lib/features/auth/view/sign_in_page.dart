import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  final String title;

  const SignInPage({super.key, required this.title});
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // メッセージ表示用
  String infoText = '';
  // 入力したメールアドレス・パスワード
  String email = '';
  String password = '';
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
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // メールアドレス入力
              TextFormField(
                decoration: InputDecoration(labelText: 'メールアドレス'),
                onChanged: (String value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              // パスワード入力
              TextFormField(
                decoration: InputDecoration(labelText: 'パスワード'),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(infoText),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('サインイン'),
                  onPressed: () {
                    context.go('/home');
                  },
                  // onPressed: () async {
                  //   try {
                  //     // メール/パスワードでユーザー登録
                  //     final FirebaseAuth auth = FirebaseAuth.instance;
                  //     await auth.createUserWithEmailAndPassword(
                  //       email: email,
                  //       password: password,
                  //     );
                  //     // ユーザー登録に成功した場合
                  //     // チャット画面に遷移＋ログイン画面を破棄
                  //     context.go('/startup');
                  //   } catch (e) {
                  //     // ユーザー登録に失敗した場合
                  //     setState(() {
                  //       infoText = "登録に失敗しました：${e.toString()}";
                  //     });
                  //   }
                  // },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
