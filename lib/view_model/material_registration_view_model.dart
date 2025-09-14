import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../providers/isar_provider.dart';
import '../model/vocabulary.dart';

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
  RegistrationFormData build() {
    final types = ['vocabulary', 'phrase'];
    return RegistrationFormData(
      name: '',
      selectedType: types[0],
      selectedTypeFlags: [true, false],
      types: types,
    );
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateMeaning(String meaning) {
    state = state.copyWith(meaning: meaning);
  }

  void updatePronunciation(String pronunciation) {
    state = state.copyWith(pronunciation: pronunciation);
  }

  void updateExample(String example) {
    state = state.copyWith(example: example);
  }

  void updateSituation(String situation) {
    state = state.copyWith(situation: situation);
  }

  void updateSelectedType(int index) {
    final selectedType = state.types[index];
    final selectedTypeFlags = List.generate(
      state.types.length,
      (i) => i == index,
    );
    state = state.copyWith(
      selectedType: selectedType,
      selectedTypeFlags: selectedTypeFlags,
    );
  }

  void updateSelectedPos(String? selectedPos) {
    state = state.copyWith(selectedPos: selectedPos);
  }

  bool canRegister() {
    return state.name.isNotEmpty;
  }

  Future<void> registerMaterial() async {
    final isar = await ref.read(isarProvider.future);
    final vocabularys = isar.vocabularys;
    await isar.writeTxn(() async {
      await vocabularys.put(state.toVocabulary());
    });
  }
}
