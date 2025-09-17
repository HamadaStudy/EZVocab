import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../providers/isar_provider.dart';
import '../providers/message_provider.dart';
import '../model/vocabulary.dart';
import '../utils/test_data_generator.dart';

part 'material_registration_view_model.g.dart';

class RegistrationFormData {
  final String name;
  final String? pronunciation;
  final String? meaning;
  final String? example;
  final String? situation;
  final String selectedType;
  final String? selectedPos;
  final List<bool> selectedTypeFlags;
  final List<String> types;

  RegistrationFormData({
    required this.name,
    this.pronunciation,
    this.meaning,
    this.example,
    this.situation,
    required this.selectedType,
    this.selectedPos,
    required this.selectedTypeFlags,
    required this.types,
  });

  RegistrationFormData copyWith({
    String? name,
    String? pronunciation,
    String? meaning,
    String? example,
    String? situation,
    String? selectedType,
    String? selectedPos,
    List<bool>? selectedTypeFlags,
    List<String>? types,
  }) {
    return RegistrationFormData(
      name: name ?? this.name,
      pronunciation: pronunciation ?? this.pronunciation,
      meaning: meaning ?? this.meaning,
      example: example ?? this.example,
      situation: situation ?? this.situation,
      selectedType: selectedType ?? this.selectedType,
      selectedPos: selectedPos ?? this.selectedPos,
      selectedTypeFlags: selectedTypeFlags ?? this.selectedTypeFlags,
      types: types ?? this.types,
    );
  }

  Vocabulary toVocabulary() {
    return Vocabulary(
      name: name,
      type: selectedType,
      meaning: meaning,
      pos: selectedPos,
      pronunciation: pronunciation,
      example: example,
      situation: situation,
      createdAt: DateTime.now(),
      proficiency: 0,
    );
  }
}

@riverpod
class MaterialRegistrationViewModel extends _$MaterialRegistrationViewModel {
  @override
  Future<RegistrationFormData> build() async {
    final types = ['vocabulary', 'phrase'];
    final initialData = RegistrationFormData(
      name: '',
      selectedType: types[0],
      selectedTypeFlags: [true, false],
      types: types,
    );
    return initialData;
  }

  void updateName(String name) {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(name: name));
    }
  }

  void updateMeaning(String meaning) {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(meaning: meaning));
    }
  }

  void updatePronunciation(String pronunciation) {
    if (state.hasValue) {
      state = AsyncValue.data(
        state.value!.copyWith(pronunciation: pronunciation),
      );
    }
  }

  void updateExample(String example) {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(example: example));
    }
  }

  void updateSituation(String situation) {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(situation: situation));
    }
  }

  void updateSelectedType(int index) {
    if (state.hasValue) {
      final selectedType = state.value!.types[index];
      final types = state.value!.types;
      final selectedTypeFlags = List.generate(types.length, (i) => i == index);
      state = AsyncValue.data(
        state.value!.copyWith(
          selectedType: selectedType,
          selectedTypeFlags: selectedTypeFlags,
        ),
      );
    }
  }

  void updateSelectedPos(String? selectedPos) {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(selectedPos: selectedPos));
    }
  }

  bool canRegister() {
    // データがある場合のみnameのチェックを行う
    return state.hasValue && state.value!.name.isNotEmpty;
  }

  Future<bool> registerMaterial() async {
    // stateをloadingにする前に、現在のデータを保持する
    final currentData = state.value;
    state = const AsyncValue.loading();
    try {
      final isar = await ref.read(isarProvider.future);
      final vocabularys = isar.vocabularys;
      await isar.writeTxn(() async {
        await vocabularys.put(currentData!.toVocabulary());
      });
      ref.invalidateSelf();
      ref.read(messageProvider.notifier).showMessage('登録成功');
      return true;
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
      ref.read(messageProvider.notifier).showMessage('登録失敗');
      return false;
    }
  }

  Future<void> generateTestData() async {
    final isar = await ref.read(isarProvider.future);
    // 方法1: 既存データに追加
    await VocabularyTestDataGenerator.insertTestData(isar);

    // 方法2: 既存データを削除してからテストデータを登録
    await VocabularyTestDataGenerator.resetWithTestData(isar);

    // await isar.close();
  }
}
