import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_bottom_navigation_bar.dart';

class TestSettingsPage extends ConsumerStatefulWidget {
  const TestSettingsPage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<TestSettingsPage> createState() => _TestSettingsPageState();
}

class _TestSettingsPageState extends ConsumerState<TestSettingsPage> {
  // 各ToggleButtonsの選択状態を管理するリスト
  final List<bool> _isRangeSelected = [true, false, false];
  final List<bool> _isTypeSelected = [true, false, false];
  final List<bool> _isFormatSelected = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 出題範囲
              const Text('出題範囲', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ToggleButtons(
                isSelected: _isRangeSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < _isRangeSelected.length; i++) {
                      _isRangeSelected[i] = i == index;
                    }
                  });
                },
                children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('おまかせ')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('未習得')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('苦手')),
                ],
              ),
          
              // 種別
              const SizedBox(height: 24),
              const Text('種別', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ToggleButtons(
                isSelected: _isTypeSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < _isTypeSelected.length; i++) {
                      _isTypeSelected[i] = i == index;
                    }
                  });
                },
                children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('単語')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Idiom')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('フレーズ')),
                ],
              ),
          
              // 出題形式
              const SizedBox(height: 24),
              const Text('出題形式', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ToggleButtons(
                isSelected: _isFormatSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < _isFormatSelected.length; i++) {
                      _isFormatSelected[i] = i == index;
                    }
                  });
                },
                children: const [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('カード')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('和訳')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('英訳')),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('聞き取り')),
                ],
              ),
              
              // スタートボタン
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // スタートボタンが押されたときの処理
                    print('テストを開始します');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurple[200],
                    padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('スタート', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar()
    );
  }
}