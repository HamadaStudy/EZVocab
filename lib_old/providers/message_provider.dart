import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_provider.g.dart';

@riverpod
class Message extends _$Message {
  @override
  String? build() => null;

  void showMessage(String message) {
    state = message;

    Future.delayed(const Duration(seconds: 3), () {
      state = null;
    });
  }

  void clearMessage() {
    state = null;
  }
}