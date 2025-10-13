import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntryPage extends StatefulWidget {
  final String title;

  const EntryPage({super.key, required this.title});

  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 画面中央に配置
            children: [
              // ロゴの存在感を出すための修正
              Text(
                "EZVocab",
                style: TextStyle(
                  fontSize: 48, // フォントサイズを大きく
                  fontWeight: FontWeight.bold, // 太字にする
                ),
              ),
              const SizedBox(height: 120), // ロゴとボタンの間に大きなスペースを追加
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.push('/signup');
                      },
                      child: Text("Sign Up"),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        context.push('/signin');
                      },
                      child: Text("Sign In"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _EntryPageState extends State<EntryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(24),
//           child: Column(
//             children: [
//               Text("EZVocab"),
//               const SizedBox(height: 24),
//               Container(
//                 padding: EdgeInsets.all(8),
//                 child: Column(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         context.push('/signup');
//                         // context.go('/signup');
//                       },
//                       child: Text("Sign Up"),
//                     ),
//                     const SizedBox(height: 8),
//                     ElevatedButton(
//                       onPressed: () {
//                         context.push('/signin');
//                       },
//                       child: Text("Sign In"),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );

    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     child: Column(
    //       children: [
    //         Text("EZVocab"),
    //         ElevatedButton(
    //           onPressed: () {
    //             context.push('/signup');
    //             // context.go('/signup');
    //           },
    //           child: Text("Sign Up"),
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             context.push('/signin');
    //           },
    //           child: Text("Sign In"),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
//   }
// }
