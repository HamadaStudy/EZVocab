import 'package:isar/isar.dart';

part 'vocabulary.g.dart';

@collection
class Vocabulary {
  Id id = Isar.autoIncrement;

  String name;
  String type;
  String? meaning;
  String? pos;
  String? pronunciation;
  String? audioPath;
  String? example;
  String? exampleAudioPath;
  String? situation;
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
    this.example,
    this.exampleAudioPath,
    this.situation,
    required this.createdAt,
    this.lastStudiedAt,
    this.nextReview,
    this.proficiency = 0,
  });
}
