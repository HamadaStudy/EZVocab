import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/auth_view_model.dart';
import 'package:go_router/go_router.dart';
import '../router/app_router.dart';

class AppBottomNavigationBar extends ConsumerStatefulWidget{
  const AppBottomNavigationBar({super.key});

  @override
  ConsumerState<AppBottomNavigationBar> createState() => _NavigationState();
}

class _NavigationState extends ConsumerState<AppBottomNavigationBar> {
  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final state = router.routerDelegate.currentConfiguration.uri;
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(onPressed: () {
              context.go('/home');
            }, icon: Icon(Icons.home)),
            IconButton(
              onPressed: () {
                context.go('/material_registration');
              },
              icon: Icon(Icons.add_box),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.library_books)),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.fitness_center)),
          ],
        ),
      );
  }
}