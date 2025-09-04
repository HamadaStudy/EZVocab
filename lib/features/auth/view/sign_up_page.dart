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