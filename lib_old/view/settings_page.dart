import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';
import '../view_model/auth_view_model.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(authViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('User'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                title: Text('ニックネーム'),
                value: Text('あんぴし'), // TODO
                onPressed: (context) {}, // TODO: 名前変更ページへ遷移
              ),
              SettingsTile.navigation(
                title: Text('試験日'),
                value: Text('2025/11/25'), // TODO
                onPressed: (context) {}, // TODO: 試験日変更ページへ遷移
              ),
              SettingsTile.navigation(
                title: Text('復習間隔'),
                value: Text('3日'), // TODO
                onPressed: (context) {}, // TODO: 復習間隔変更ページへ遷移
              ),
              SettingsTile.navigation(
                title: Text('ログアウト'),
                leading: Icon(Icons.logout),
                onPressed: (context) {
                  viewModel.signOut();
                },
              ),
            ],
          ),
          SettingsSection(
            title: Text('App'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                title: Text('テーマ'),
                value: Text('Light'), // TODO
                onPressed: (context) {}, // TODO: テーマ変更ページへ遷移
              ),
              SettingsTile.switchTile(
                title: Text('通知'),
                onToggle: (value) {}, // TODO
                initialValue: false,
                leading: Icon(Icons.notifications_active),
              ),
              SettingsTile.switchTile(
                title: Text('音声ダウンロード'),
                onToggle: (value) {}, // TODO
                initialValue: true,
                leading: Icon(Icons.cloud_download),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
