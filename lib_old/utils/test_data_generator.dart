import 'package:isar/isar.dart';
import '../model/vocabulary.dart'; // あなたのvocabularyファイルをインポート

class VocabularyTestDataGenerator {
  static List<Vocabulary> generateTestData() {
    final List<Vocabulary> vocabularies = [];
    final now = DateTime.now();
    
    // 単語の種類別データ
    final Map<String, List<Map<String, dynamic>>> wordData = {
      'noun': [
        {'name': 'apple', 'meaning': 'りんご', 'pos': 'noun', 'pronunciation': '/ˈæpəl/', 'example': 'I eat an apple every day.'},
        {'name': 'book', 'meaning': '本', 'pos': 'noun', 'pronunciation': '/bʊk/', 'example': 'This book is very interesting.'},
        {'name': 'computer', 'meaning': 'コンピュータ', 'pos': 'noun', 'pronunciation': '/kəmˈpjuːtər/', 'example': 'I work on my computer.'},
        {'name': 'dog', 'meaning': '犬', 'pos': 'noun', 'pronunciation': '/dɔːɡ/', 'example': 'My dog loves to play fetch.'},
        {'name': 'house', 'meaning': '家', 'pos': 'noun', 'pronunciation': '/haʊs/', 'example': 'We live in a big house.'},
        {'name': 'car', 'meaning': '車', 'pos': 'noun', 'pronunciation': '/kɑːr/', 'example': 'My car is red.'},
        {'name': 'tree', 'meaning': '木', 'pos': 'noun', 'pronunciation': '/triː/', 'example': 'The tree is very tall.'},
        {'name': 'water', 'meaning': '水', 'pos': 'noun', 'pronunciation': '/ˈwɔːtər/', 'example': 'I drink water every day.'},
        {'name': 'school', 'meaning': '学校', 'pos': 'noun', 'pronunciation': '/skuːl/', 'example': 'I go to school by bus.'},
        {'name': 'phone', 'meaning': '電話', 'pos': 'noun', 'pronunciation': '/foʊn/', 'example': 'My phone battery is low.'},
      ],
      'verb': [
        {'name': 'run', 'meaning': '走る', 'pos': 'verb', 'pronunciation': '/rʌn/', 'example': 'I run every morning.'},
        {'name': 'eat', 'meaning': '食べる', 'pos': 'verb', 'pronunciation': '/iːt/', 'example': 'We eat dinner at 7 PM.'},
        {'name': 'study', 'meaning': '勉強する', 'pos': 'verb', 'pronunciation': '/ˈstʌdi/', 'example': 'I study English every day.'},
        {'name': 'sleep', 'meaning': '眠る', 'pos': 'verb', 'pronunciation': '/sliːp/', 'example': 'I sleep for 8 hours.'},
        {'name': 'work', 'meaning': '働く', 'pos': 'verb', 'pronunciation': '/wɜːrk/', 'example': 'She works at a hospital.'},
        {'name': 'play', 'meaning': '遊ぶ', 'pos': 'verb', 'pronunciation': '/pleɪ/', 'example': 'Children play in the park.'},
        {'name': 'write', 'meaning': '書く', 'pos': 'verb', 'pronunciation': '/raɪt/', 'example': 'I write in my diary.'},
        {'name': 'read', 'meaning': '読む', 'pos': 'verb', 'pronunciation': '/riːd/', 'example': 'She reads a book before bed.'},
        {'name': 'cook', 'meaning': '料理する', 'pos': 'verb', 'pronunciation': '/kʊk/', 'example': 'My mother cooks delicious meals.'},
        {'name': 'travel', 'meaning': '旅行する', 'pos': 'verb', 'pronunciation': '/ˈtrævəl/', 'example': 'We travel to Japan next month.'},
      ],
      'adjective': [
        {'name': 'beautiful', 'meaning': '美しい', 'pos': 'adjective', 'pronunciation': '/ˈbjuːtɪfəl/', 'example': 'The sunset is beautiful.'},
        {'name': 'happy', 'meaning': '幸せな', 'pos': 'adjective', 'pronunciation': '/ˈhæpi/', 'example': 'I am happy today.'},
        {'name': 'big', 'meaning': '大きい', 'pos': 'adjective', 'pronunciation': '/bɪɡ/', 'example': 'This is a big house.'},
        {'name': 'small', 'meaning': '小さい', 'pos': 'adjective', 'pronunciation': '/smɔːl/', 'example': 'I have a small dog.'},
        {'name': 'fast', 'meaning': '速い', 'pos': 'adjective', 'pronunciation': '/fæst/', 'example': 'This car is very fast.'},
        {'name': 'slow', 'meaning': '遅い', 'pos': 'adjective', 'pronunciation': '/sloʊ/', 'example': 'The turtle is slow.'},
        {'name': 'hot', 'meaning': '熱い', 'pos': 'adjective', 'pronunciation': '/hɑːt/', 'example': 'The coffee is hot.'},
        {'name': 'cold', 'meaning': '冷たい', 'pos': 'adjective', 'pronunciation': '/koʊld/', 'example': 'The ice cream is cold.'},
        {'name': 'smart', 'meaning': '賢い', 'pos': 'adjective', 'pronunciation': '/smɑːrt/', 'example': 'She is a smart student.'},
        {'name': 'funny', 'meaning': '面白い', 'pos': 'adjective', 'pronunciation': '/ˈfʌni/', 'example': 'That joke was funny.'},
      ],
      'phrase': [
        {'name': 'How are you?', 'meaning': '元気ですか？', 'pos': 'phrase', 'pronunciation': '/haʊ ɑːr juː/', 'example': 'How are you? I am fine, thank you.'},
        {'name': 'Nice to meet you', 'meaning': 'はじめまして', 'pos': 'phrase', 'pronunciation': '/naɪs tuː miːt juː/', 'example': 'Nice to meet you. My name is John.'},
        {'name': 'Thank you', 'meaning': 'ありがとう', 'pos': 'phrase', 'pronunciation': '/θæŋk juː/', 'example': 'Thank you for your help.'},
        {'name': 'Excuse me', 'meaning': 'すみません', 'pos': 'phrase', 'pronunciation': '/ɪkˈskjuːz miː/', 'example': 'Excuse me, where is the station?'},
        {'name': 'Good morning', 'meaning': 'おはよう', 'pos': 'phrase', 'pronunciation': '/ɡʊd ˈmɔːrnɪŋ/', 'example': 'Good morning! How did you sleep?'},
        {'name': 'Good night', 'meaning': 'おやすみ', 'pos': 'phrase', 'pronunciation': '/ɡʊd naɪt/', 'example': 'Good night. See you tomorrow.'},
        {'name': 'I am sorry', 'meaning': 'ごめんなさい', 'pos': 'phrase', 'pronunciation': '/aɪ æm ˈsɔːri/', 'example': 'I am sorry for being late.'},
        {'name': 'You are welcome', 'meaning': 'どういたしまして', 'pos': 'phrase', 'pronunciation': '/juː ɑːr ˈwelkəm/', 'example': 'You are welcome. Anytime!'},
        {'name': 'See you later', 'meaning': 'また後で', 'pos': 'phrase', 'pronunciation': '/siː juː ˈleɪtər/', 'example': 'See you later. Have a good day!'},
        {'name': 'Take care', 'meaning': '気をつけて', 'pos': 'phrase', 'pronunciation': '/teɪk ker/', 'example': 'Take care on your way home.'},
      ],
      'idiom': [
        {'name': 'break the ice', 'meaning': '場の雰囲気を和らげる', 'pos': 'idiom', 'pronunciation': '/breɪk ðə aɪs/', 'example': 'He told a joke to break the ice.'},
        {'name': 'piece of cake', 'meaning': '簡単なこと', 'pos': 'idiom', 'pronunciation': '/piːs ʌv keɪk/', 'example': 'The test was a piece of cake.'},
        {'name': 'hit the books', 'meaning': '勉強する', 'pos': 'idiom', 'pronunciation': '/hɪt ðə bʊks/', 'example': 'I need to hit the books tonight.'},
        {'name': 'call it a day', 'meaning': '今日はここまで', 'pos': 'idiom', 'pronunciation': '/kɔːl ɪt ə deɪ/', 'example': 'Let\'s call it a day and go home.'},
        {'name': 'under the weather', 'meaning': '体調が悪い', 'pos': 'idiom', 'pronunciation': '/ˈʌndər ðə ˈweðər/', 'example': 'I\'m feeling under the weather today.'},
        {'name': 'cost an arm and a leg', 'meaning': '非常に高い', 'pos': 'idiom', 'pronunciation': '/kɔːst æn ɑːrm ænd ə leɡ/', 'example': 'That car costs an arm and a leg.'},
        {'name': 'spill the beans', 'meaning': '秘密をばらす', 'pos': 'idiom', 'pronunciation': '/spɪl ðə biːnz/', 'example': 'Don\'t spill the beans about the surprise party.'},
        {'name': 'barking up the wrong tree', 'meaning': '見当違い', 'pos': 'idiom', 'pronunciation': '/ˈbɑːrkɪŋ ʌp ðə rɔːŋ triː/', 'example': 'You\'re barking up the wrong tree if you think I did it.'},
        {'name': 'let the cat out of the bag', 'meaning': '秘密を漏らす', 'pos': 'idiom', 'pronunciation': '/let ðə kæt aʊt ʌv ðə bæɡ/', 'example': 'She let the cat out of the bag about the promotion.'},
        {'name': 'on cloud nine', 'meaning': '大変嬉しい', 'pos': 'idiom', 'pronunciation': '/ɑːn klaʊd naɪn/', 'example': 'She was on cloud nine after getting the job.'},
      ]
    };
    
    // 学習状況のパターン
    final List<String> situations = [
      'business meeting',
      'casual conversation',
      'academic discussion',
      'daily life',
      'travel',
      'shopping',
      'restaurant',
      'school',
      'work',
      'hobby',
    ];
    
    int count = 0;
    
    // 各カテゴリからデータを生成
    wordData.forEach((type, words) {
      for (var wordInfo in words) {
        if (count >= 50) break;
        
        // 学習レベルをランダムに設定
        final proficiency = [0, 1, 2, 3, 4, 5][count % 6];
        
        // 最後に学習した日をランダムに設定（一部は未学習）
        DateTime? lastStudiedAt;
        DateTime? nextReview;
        
        if (count % 3 != 0) { // 約2/3は学習済み
          lastStudiedAt = now.subtract(Duration(days: count % 30));
          // 習熟度に応じて次回復習日を設定
          final daysToAdd = [1, 3, 7, 14, 30, 90][proficiency];
          nextReview = lastStudiedAt.add(Duration(days: daysToAdd));
        }
        
        vocabularies.add(
          Vocabulary(
            name: wordInfo['name'],
            type: type,
            meaning: wordInfo['meaning'],
            pos: wordInfo['pos'],
            pronunciation: wordInfo['pronunciation'],
            audioPath: count % 4 == 0 ? 'audio/${wordInfo['name']}.mp3' : null,
            example: wordInfo['example'],
            exampleAudioPath: count % 6 == 0 ? 'audio/${wordInfo['name']}_example.mp3' : null,
            situation: situations[count % situations.length],
            createdAt: now.subtract(Duration(days: count % 100)),
            lastStudiedAt: lastStudiedAt,
            nextReview: nextReview,
            proficiency: proficiency,
          ),
        );
        
        count++;
      }
    });
    
    return vocabularies;
  }
  
  // Isarにデータを登録する関数
  static Future<void> insertTestData(Isar isar) async {
    final testData = generateTestData();
    
    await isar.writeTxn(() async {
      await isar.vocabularys.putAll(testData);
    });
    
    print('テストデータ ${testData.length} 件を登録しました');
  }
  
  // 既存のデータを全削除してからテストデータを登録
  static Future<void> resetWithTestData(Isar isar) async {
    await isar.writeTxn(() async {
      await isar.vocabularys.clear();
    });
    
    await insertTestData(isar);
    print('データベースをリセットしてテストデータを登録しました');
  }
}