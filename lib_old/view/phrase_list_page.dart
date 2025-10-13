import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_bottom_navigation_bar.dart';

class PhraseListPage extends ConsumerStatefulWidget {
  const PhraseListPage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<PhraseListPage> createState() => _PhraseListPageState();
}

class _PhraseListPageState extends ConsumerState<PhraseListPage> {
  // フィルターボタンの選択状態を管理
  final List<bool> _isFilterSelected = [false];

  @override
  Widget build(BuildContext context) {
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
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('未習得'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 語彙リスト
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 実際のデータ数に合わせる
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: const Text(
                        'in front of [発音]',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text('〜の前に'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
