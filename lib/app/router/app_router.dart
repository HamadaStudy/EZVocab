import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/auth/providers/auth_provider.dart';
import '../../features/auth/view/home_page.dart';
import '../../features/auth/view/sign_in_page.dart';
import '../../features/auth/view/entry_page.dart';
import '../../features/auth/view/sign_up_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateChangesProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (BuildContext context, GoRouterState state) {
      final loggedIn = authState.valueOrNull != null;
      final loggingIn = state.uri.toString() == '/signin';
      final isSigningUp = state.uri.toString() == '/signup';
      final isEntrying = state.uri.toString() == '/';

      if (loggedIn) {
        return loggingIn || isSigningUp || isEntrying ? '/home' : null;
      }

      if (!loggedIn) {
        return state.uri.toString() == '/home' ? '/signin' : null;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const EntryPage(title: 'Entry'),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpPage(title: 'Sign Up'),
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) => const SignInPage(title: 'Sign In'),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(title: 'Home'),
      ),
    ],
  );
});