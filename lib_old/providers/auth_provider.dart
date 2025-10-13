import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repository/auth_repository.dart';

part 'auth_provider.g.dart';

// Repositoryのインスタンスを提供するProvider (Repositoryの状態)
@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository();
}

// ユーザーの認証状態を監視するStreamProvider (ユーザーの認証状態)
@riverpod
Stream<User?> authStateChanges(AuthStateChangesRef ref) {
  return ref.watch(authRepositoryProvider).authStateChanges;
}