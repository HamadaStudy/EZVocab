import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/auth_view_model.dart';
// import '../view_model/sign_up_view_model.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(authViewModelProvider.notifier);
    final state = ref.watch(authViewModelProvider);
    ref.listen(authViewModelProvider, (previousState, newState) {
      if (newState.hasError) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(newState.error.toString())));
      }
    });
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
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'メールアドレス',
                  // border: OutlineInputBorder(),
                ),
                // keyboardType: TextInputType.emailAddress,
              ),
              // パスワード入力
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'パスワード',
                  // border: OutlineInputBorder(),
                ),
                // obscureText: true,
              ),
              const SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(8),
                // メッセージ表示
                // child: Text(state.error.toString()),
              ),
              SizedBox(
                width: double.infinity,
                // ユーザー登録ボタン
                child: ElevatedButton(
                  onPressed:
                      state
                          .isLoading // ローディング中はボタンを無効化
                      ? null
                      : () {
                          // viewModelのsignUpメソッドに値を渡す
                          viewModel.signUp(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                          );
                        },
                  child: state.isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('サインアップ'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class SignUpPage extends StatefulWidget {
//   final String title;

//   const SignUpPage({super.key, required this.title});
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   // メッセージ表示用
//   String infoText = '';
//   // 入力したメールアドレス・パスワード
//   String email = '';
//   String password = '';
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // メールアドレス入力
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'メールアドレス'),
//                 onChanged: (String value) {
//                   setState(() {
//                     email = value;
//                   });
//                 },
//               ),
//               // パスワード入力
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'パスワード'),
//                 obscureText: true,
//                 onChanged: (String value) {
//                   setState(() {
//                     password = value;
//                   });
//                 },
//               ),
//               Container(
//                 padding: EdgeInsets.all(8),
//                 // メッセージ表示
//                 child: Text(infoText),
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 // ユーザー登録ボタン
//                 child: ElevatedButton(
//                   child: Text('登録'),
//                   onPressed: () {
//                     context.go('/');
//                   },
//                   // onPressed: () async {
//                   //   try {
//                   //     // メール/パスワードでユーザー登録
//                   //     final FirebaseAuth auth = FirebaseAuth.instance;
//                   //     await auth.createUserWithEmailAndPassword(
//                   //       email: email,
//                   //       password: password,
//                   //     );
//                   //     // ユーザー登録に成功した場合
//                   //     // チャット画面に遷移＋ログイン画面を破棄
//                   //     context.go('/startup');
//                   //   } catch (e) {
//                   //     // ユーザー登録に失敗した場合
//                   //     setState(() {
//                   //       infoText = "登録に失敗しました：${e.toString()}";
//                   //     });
//                   //   }
//                   // },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// // }
// return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // ② メールアドレスの入力欄
//             TextFormField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 labelText: 'メールアドレス',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.emailAddress,
//             ),
//             const SizedBox(height: 16),
//             // ③ パスワードの入力欄
//             TextFormField(
//               controller: _passwordController,
//               decoration: const InputDecoration(
//                 labelText: 'パスワード',
//                 border: OutlineInputBorder(),
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(height: 24),
//             // ④ 登録ボタン
//             ElevatedButton(
//               onPressed: state.isLoading // ローディング中はボタンを無効化
//                   ? null
//                   : () {
//                       // viewModelのsignUpメソッドに値を渡す
//                       viewModel.signUp(
//                         email: _emailController.text.trim(),
//                         password: _passwordController.text.trim(),
//                       );
//                     },
//               child: state.isLoading
//                   ? const CircularProgressIndicator(color: Colors.white)
//                   : const Text('登録'),
//             ),
//           ],
//         ),
//       ),
//     );
