import 'package:isar/isar.dart';

part 'vocabulary.g.dart';

@collection
class Vocabulary {
  Id id = Isar.autoIncrement;

  String name;
  String type;
  String meaning;
  String? pos;
  String? pronunciation;
  String? audioPath;
  String? exmaple;
  String? exmapleAudioPath;
  String? contextTag;
  DateTime createdAt;
  DateTime? lastStudiedAt;
  int proficiency;
  DateTime? nextReview;

  Vocabulary({
    required this.name,
    required this.type,
    required this.meaning,
    this.pos,
    this.pronunciation,
    this.audioPath,
    this.exmaple,
    this.exmapleAudioPath,
    this.contextTag,
    required this.createdAt,
    this.lastStudiedAt,
    this.nextReview,
    this.proficiency = 0,
  });
}
