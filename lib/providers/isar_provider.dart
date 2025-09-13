import 'package:isar/isar.dart';
import '../model/vocabulary.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'isar_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isar(IsarRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [VocabularySchema],
    directory: dir.path,
    inspector: true,
  );
  return isar;
}