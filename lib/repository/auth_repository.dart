import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // 認証状態の変更をStreamで提供
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // メールとパスワードでサインイン
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  // ユーザー登録
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  // サインアウト
  Future<void> signOut() async {
    await _auth.signOut();
  }
}