import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../providers/isar_provider.dart';
import '../model/vocabulary.dart';

part 'material_registration_view_model.g.dart';

@riverpod
class MaterialRegistrationViewModel extends _$MaterialRegistrationViewModel {
  @override
  Future<void> build() async {}

  Future<void> registerMaterial(Vocabulary vocabulary) async {
    final isar = await ref.read(isarProvider.future);

    // final testVocabulary = Vocabulary(
    //   name: 'Flutter',
    //   type: 'word',
    //   meaning: 'Googleによって開発されたUIツールキット',
    //   pos: 'noun',
    //   pronunciation: '/ˈflʌtər/',
    //   audioPath: 'path/to/flutter.mp3',
    //   example: 'I love building apps with Flutter.',
    //   exampleAudioPath: 'path/to/example.mp3',
    //   context: 'programming, framework',
    //   createdAt: DateTime.now(),
    //   proficiency: 3,
    // );

    final vocabularys = isar.vocabularys;
    await isar.writeTxn(() async {
        await vocabularys.put(vocabulary);
    });
  }
}
