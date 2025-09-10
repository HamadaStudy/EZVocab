import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/auth_view_model.dart';
import 'package:go_router/go_router.dart';
import 'app_bottom_navigation_bar.dart';

class MaterialRegistrationPage extends ConsumerStatefulWidget {
  const MaterialRegistrationPage({super.key, required this.title});

  final String title;
  @override
  ConsumerState<MaterialRegistrationPage> createState() => _MaterialRegistrationState();
}

class _MaterialRegistrationState extends ConsumerState<MaterialRegistrationPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text("hello"),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
    
  }
}