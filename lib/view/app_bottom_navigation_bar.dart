import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_model/auth_view_model.dart';
import 'package:go_router/go_router.dart';
import '../router/app_router.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(routerProvider);
    final String currentPath =
        router.routerDelegate.currentConfiguration.uri.path;

    Widget _buildIconButton(String path, IconData iconData) {
      final bool isSelected = (path == currentPath);
      final Color iconColor = isSelected
          ? Theme.of(context).primaryColor
          : Colors.grey;
      final Color? splashHighlightColor = isSelected
          ? Colors.transparent
          : null;

      return IconButton(
        onPressed: () {
          if (!isSelected) {
            context.go(path);
          }
        },
        icon: Icon(iconData, color: iconColor),
        splashColor: splashHighlightColor,
        highlightColor: splashHighlightColor,
      );
    }

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildIconButton('/home', Icons.home),
          _buildIconButton('/material_registration', Icons.add_box),
          _buildIconButton('/vocabulary_list', Icons.library_books),
          _buildIconButton('/phrase_list', Icons.chat_bubble),
          _buildIconButton('/test_settings', Icons.fitness_center),
        ],
      ),
    );
  }
}
