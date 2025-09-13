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
  List<bool> isSelected = [true, false];

  // テキストフィールドのコントローラー
  final _wordController = TextEditingController();
  final _pronunciationController = TextEditingController();
  final _meaningController = TextEditingController();
  final _exampleController = TextEditingController();
  final _contextController = TextEditingController();

  @override
  void dispose() {
    // コントローラーを破棄してメモリリークを防ぎます
    _wordController.dispose();
    _pronunciationController.dispose();
    _meaningController.dispose();
    _exampleController.dispose();
    _contextController.dispose();
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
                isSelected: isSelected,
                onPressed: (index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
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
            buildLabeledTextField('単語', _wordController),
            const SizedBox(height: 16),
            buildLabeledTextField('発音記号', _pronunciationController),
            const SizedBox(height: 16),
            buildLabeledTextField('意味', _meaningController),
            const SizedBox(height: 16),
            buildLabeledTextField('例文', _exampleController),
            const SizedBox(height: 16),
            buildLabeledTextField('文脈', _contextController),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                viewModel.registerMaterial();
                print('登録!');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
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
