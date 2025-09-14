import 'package:ezvocab/model/vocabulary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_bottom_navigation_bar.dart';
import '../view_model/material_registration_view_model.dart';

class MaterialRegistrationPage extends ConsumerStatefulWidget {
  const MaterialRegistrationPage({super.key, required this.title});

  final String title;
  @override
  ConsumerState<MaterialRegistrationPage> createState() =>
      _MaterialRegistrationState();
}

class _MaterialRegistrationState
    extends ConsumerState<MaterialRegistrationPage> {
  // ToggleButtonsの選択状態を管理するリスト
  List<bool> isSelectedType = [true, false];
  List<String> typeList = ['word', 'idiom'];

  String type = 'word';
  String name = '';
  String? pronunciation;
  String meaning = '';
  String? pos;
  String? example;
  String? situation;

  // テキストフィールドのコントローラー
  final _nameController = TextEditingController();
  final _pronunciationController = TextEditingController();
  final _meaningController = TextEditingController();
  final _exampleController = TextEditingController();
  final _situationController = TextEditingController();

  final List<DropdownMenuItem<String>> _posDropdownItems = const [
    DropdownMenuItem(value: 'noun', child: Text('名詞')),
    DropdownMenuItem(value: 'pronoun', child: Text('代名詞')),
    DropdownMenuItem(value: 'verb', child: Text('動詞')),
    DropdownMenuItem(value: 'adjective', child: Text('形容詞')),
    DropdownMenuItem(value: 'adverb', child: Text('副詞')),
    DropdownMenuItem(value: 'preposition', child: Text('前置詞')),
    DropdownMenuItem(value: 'conjunction', child: Text('接続詞')),
    DropdownMenuItem(value: 'interjection', child: Text('間投詞')),
  ];

  @override
  void dispose() {
    // コントローラーを破棄してメモリリークを防ぎます
    _nameController.dispose();
    _pronunciationController.dispose();
    _meaningController.dispose();
    _exampleController.dispose();
    _situationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(materialRegistrationViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.copy), onPressed: () {}),
          IconButton(icon: Icon(Icons.star), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: ToggleButtons(
                isSelected: isSelectedType,
                onPressed: (index) {
                  setState(() {
                    for (int i = 0; i < isSelectedType.length; i++) {
                      isSelectedType[i] = i == index;
                    }
                    type = typeList[index];
                  });
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8.0,
                    ),
                    child: Text('Vocabulary'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8.0,
                    ),
                    child: Text('Phrase'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            buildLabeledTextField('単語', _nameController),
            const SizedBox(height: 16),
            buildLabeledTextField('発音記号', _pronunciationController),
            const SizedBox(height: 16),
            buildLabeledTextField('意味', _meaningController),
            const SizedBox(height: 16),
            DropdownButton(
              value: pos,
              items: _posDropdownItems,
              onChanged: (String? value) {
                setState(() {
                  pos = value;
                });
              },
              hint: const Text('品詞を選択してください'),
            ),
            const SizedBox(height: 16),
            buildLabeledTextField('例文', _exampleController),
            const SizedBox(height: 16),
            buildLabeledTextField('文脈', _situationController),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                name = _nameController.text;
                pronunciation = _pronunciationController.text;
                meaning = _meaningController.text;
                example = _exampleController.text;
                situation = _situationController.text;
                Vocabulary vocabulary = Vocabulary(
                  name: name,
                  type: type,
                  meaning: meaning,
                  createdAt: DateTime.now(),
                  pos: pos,
                  pronunciation: pronunciation,
                  example: example,
                  situation: situation,
                );
                viewModel.registerMaterial(vocabulary);
                print('登録!');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 15, 15, 15),
                backgroundColor: Colors.purple.shade200,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('登録', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }

  // ラベル付きのテキストフィールドを生成するヘルパー関数
  Widget buildLabeledTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
