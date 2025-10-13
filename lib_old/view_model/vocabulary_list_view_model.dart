import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../providers/isar_provider.dart';
import '../providers/message_provider.dart';
import '../model/vocabulary.dart';
import '../utils/test_data_generator.dart';

part 'vocabulary_list_view_model.g.dart';

@riverpod
class VocabularyListViewModel extends _$VocabularyListViewModel {
  @override
  Future<List<Vocabulary>> build() async {
    final isar = await ref.read(isarProvider.future);
    final vocabularys = isar.vocabularys;
    return vocabularys.where().findAll();
  }
}