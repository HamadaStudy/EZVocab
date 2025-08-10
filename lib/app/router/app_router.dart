// lib/app/router/app_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../ui/auth/view/home_page.dart';
import '../../ui/auth/view/login_page.dart';
import '../../ui/auth/view/startup_page.dart';
import '../../ui/auth/view/signup_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartUpPage(title: 'Start up'),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpPage(title: 'Sign Up'),
    ),
        GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(title: 'Login'),
    ),
        GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(title: 'Home'),
    ),
  ],
);
