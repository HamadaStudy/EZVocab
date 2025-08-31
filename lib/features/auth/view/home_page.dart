import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/auth_view_model.dart';

class HomePage extends ConsumerStatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void dispose() {
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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'signout',
            onPressed: () {
              viewModel.signOut();
              // handle the press
            },
          ),
        ],
      ),
      body: Center(child: Text('home')),
    );
  }
}
