import 'package:ezvocab/model/vocabulary.dart';
import 'package:ezvocab/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_bottom_navigation_bar.dart';
import '../view_model/vocabulary_list_view_model.dart';

class VocabularyListPage extends ConsumerStatefulWidget {
  const VocabularyListPage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<VocabularyListPage> createState() => _VocabularyListPageState();
}

class _VocabularyListPageState extends ConsumerState<VocabularyListPage> {
  // フィルターボタンの選択状態を管理
  final List<bool> _isFilterSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(vocabularyListViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 検索バー
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: '検索',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // フィルターボタン
            ToggleButtons(
              isSelected: _isFilterSelected,
              onPressed: (int index) {
                setState(() {
                  _isFilterSelected[index] = !_isFilterSelected[index];
                });
              },
              borderRadius: BorderRadius.circular(8.0),
              selectedColor: Colors.white,
              color: Colors.black,
              fillColor: Colors.deepPurple[200],
              splashColor: Colors.deepPurple[100],
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('未習得'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('単語'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('idiom'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 語彙リスト
            Expanded(
              child: viewModel.when(
                data: (vocabularys) {
                  // データが取得できた場合
                  if (vocabularys.isEmpty) {
                    return const Center(child: Text('語彙がありません。'));
                  }
                  return ListView.builder(
                    itemCount: vocabularys.length,
                    itemBuilder: (context, index) {
                      final vocabulary = vocabularys[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          title: Text(
                            '${vocabulary.name} ${vocabulary.meaning} [${vocabulary.pronunciation}]',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('${vocabulary.pos}'),
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(
                  // データロード中のUI
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => Center(
                  // エラー発生時のUI
                  child: Text('エラーが発生しました: $error'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
