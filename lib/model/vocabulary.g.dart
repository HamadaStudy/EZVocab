// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVocabularyCollection on Isar {
  IsarCollection<Vocabulary> get vocabularys => this.collection();
}

const VocabularySchema = CollectionSchema(
  name: r'Vocabulary',
  id: 4034508656611657227,
  properties: {
    r'audioPath': PropertySchema(
      id: 0,
      name: r'audioPath',
      type: IsarType.string,
    ),
    r'contextTag': PropertySchema(
      id: 1,
      name: r'contextTag',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'exmaple': PropertySchema(
      id: 3,
      name: r'exmaple',
      type: IsarType.string,
    ),
    r'exmapleAudioPath': PropertySchema(
      id: 4,
      name: r'exmapleAudioPath',
      type: IsarType.string,
    ),
    r'lastStudiedAt': PropertySchema(
      id: 5,
      name: r'lastStudiedAt',
      type: IsarType.dateTime,
    ),
    r'meaning': PropertySchema(
      id: 6,
      name: r'meaning',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'nextReview': PropertySchema(
      id: 8,
      name: r'nextReview',
      type: IsarType.dateTime,
    ),
    r'pos': PropertySchema(
      id: 9,
      name: r'pos',
      type: IsarType.string,
    ),
    r'proficiency': PropertySchema(
      id: 10,
      name: r'proficiency',
      type: IsarType.long,
    ),
    r'pronunciation': PropertySchema(
      id: 11,
      name: r'pronunciation',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 12,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _vocabularyEstimateSize,
  serialize: _vocabularySerialize,
  deserialize: _vocabularyDeserialize,
  deserializeProp: _vocabularyDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _vocabularyGetId,
  getLinks: _vocabularyGetLinks,
  attach: _vocabularyAttach,
  version: '3.1.0+1',
);

int _vocabularyEstimateSize(
  Vocabulary object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.audioPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.contextTag;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.exmaple;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.exmapleAudioPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.meaning.length * 3;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.pos;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pronunciation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _vocabularySerialize(
  Vocabulary object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.audioPath);
  writer.writeString(offsets[1], object.contextTag);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.exmaple);
  writer.writeString(offsets[4], object.exmapleAudioPath);
  writer.writeDateTime(offsets[5], object.lastStudiedAt);
  writer.writeString(offsets[6], object.meaning);
  writer.writeString(offsets[7], object.name);
  writer.writeDateTime(offsets[8], object.nextReview);
  writer.writeString(offsets[9], object.pos);
  writer.writeLong(offsets[10], object.proficiency);
  writer.writeString(offsets[11], object.pronunciation);
  writer.writeString(offsets[12], object.type);
}

Vocabulary _vocabularyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Vocabulary(
    audioPath: reader.readStringOrNull(offsets[0]),
    contextTag: reader.readStringOrNull(offsets[1]),
    createdAt: reader.readDateTime(offsets[2]),
    exmaple: reader.readStringOrNull(offsets[3]),
    exmapleAudioPath: reader.readStringOrNull(offsets[4]),
    lastStudiedAt: reader.readDateTimeOrNull(offsets[5]),
    meaning: reader.readString(offsets[6]),
    name: reader.readString(offsets[7]),
    nextReview: reader.readDateTimeOrNull(offsets[8]),
    pos: reader.readStringOrNull(offsets[9]),
    proficiency: reader.readLongOrNull(offsets[10]) ?? 0,
    pronunciation: reader.readStringOrNull(offsets[11]),
    type: reader.readString(offsets[12]),
  );
  object.id = id;
  return object;
}

P _vocabularyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _vocabularyGetId(Vocabulary object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _vocabularyGetLinks(Vocabulary object) {
  return [];
}

void _vocabularyAttach(IsarCollection<dynamic> col, Id id, Vocabulary object) {
  object.id = id;
}

extension VocabularyQueryWhereSort
    on QueryBuilder<Vocabulary, Vocabulary, QWhere> {
  QueryBuilder<Vocabulary, Vocabulary, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VocabularyQueryWhere
    on QueryBuilder<Vocabulary, Vocabulary, QWhereClause> {
  QueryBuilder<Vocabulary, Vocabulary, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VocabularyQueryFilter
    on QueryBuilder<Vocabulary, Vocabulary, QFilterCondition> {
  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      audioPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audioPath',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      audioPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audioPath',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> audioPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      audioPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> audioPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> audioPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audioPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      audioPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> audioPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> audioPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> audioPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audioPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      audioPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audioPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      audioPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audioPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contextTag',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contextTag',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> contextTagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contextTag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contextTag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contextTag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> contextTagBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contextTag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contextTag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contextTag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contextTag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> contextTagMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contextTag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contextTag',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      contextTagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contextTag',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exmaple',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exmaple',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exmaple',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exmaple',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exmaple',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exmaple',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'exmaple',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'exmaple',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'exmaple',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'exmaple',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> exmapleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exmaple',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'exmaple',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exmapleAudioPath',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exmapleAudioPath',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exmapleAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exmapleAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exmapleAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exmapleAudioPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'exmapleAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'exmapleAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'exmapleAudioPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'exmapleAudioPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exmapleAudioPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      exmapleAudioPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'exmapleAudioPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      lastStudiedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastStudiedAt',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      lastStudiedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastStudiedAt',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      lastStudiedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastStudiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      lastStudiedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastStudiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      lastStudiedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastStudiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      lastStudiedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastStudiedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      meaningGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meaning',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'meaning',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> meaningIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meaning',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      meaningIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'meaning',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      nextReviewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nextReview',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      nextReviewIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nextReview',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nextReviewEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nextReview',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      nextReviewGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nextReview',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      nextReviewLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nextReview',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> nextReviewBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nextReview',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pos',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pos',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pos',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> posIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pos',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      proficiencyEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proficiency',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      proficiencyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proficiency',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      proficiencyLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proficiency',
        value: value,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      proficiencyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proficiency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pronunciation',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pronunciation',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pronunciation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pronunciation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pronunciation',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition>
      pronunciationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pronunciation',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension VocabularyQueryObject
    on QueryBuilder<Vocabulary, Vocabulary, QFilterCondition> {}

extension VocabularyQueryLinks
    on QueryBuilder<Vocabulary, Vocabulary, QFilterCondition> {}

extension VocabularyQuerySortBy
    on QueryBuilder<Vocabulary, Vocabulary, QSortBy> {
  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByAudioPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioPath', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByAudioPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioPath', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByContextTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contextTag', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByContextTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contextTag', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByExmaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmaple', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByExmapleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmaple', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByExmapleAudioPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmapleAudioPath', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy>
      sortByExmapleAudioPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmapleAudioPath', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByLastStudiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByLastStudiedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByMeaning() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByMeaningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByNextReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReview', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByNextReviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReview', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByPos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByPosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByProficiency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proficiency', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByProficiencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proficiency', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByPronunciation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByPronunciationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension VocabularyQuerySortThenBy
    on QueryBuilder<Vocabulary, Vocabulary, QSortThenBy> {
  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByAudioPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioPath', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByAudioPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audioPath', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByContextTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contextTag', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByContextTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contextTag', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByExmaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmaple', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByExmapleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmaple', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByExmapleAudioPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmapleAudioPath', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy>
      thenByExmapleAudioPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exmapleAudioPath', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByLastStudiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByLastStudiedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastStudiedAt', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByMeaning() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByMeaningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByNextReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReview', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByNextReviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nextReview', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByPos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByPosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByProficiency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proficiency', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByProficiencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proficiency', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByPronunciation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByPronunciationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.desc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension VocabularyQueryWhereDistinct
    on QueryBuilder<Vocabulary, Vocabulary, QDistinct> {
  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByAudioPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audioPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByContextTag(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contextTag', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByExmaple(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exmaple', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByExmapleAudioPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exmapleAudioPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByLastStudiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastStudiedAt');
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByMeaning(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meaning', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByNextReview() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nextReview');
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByPos(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pos', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByProficiency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proficiency');
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByPronunciation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pronunciation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Vocabulary, Vocabulary, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension VocabularyQueryProperty
    on QueryBuilder<Vocabulary, Vocabulary, QQueryProperty> {
  QueryBuilder<Vocabulary, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Vocabulary, String?, QQueryOperations> audioPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audioPath');
    });
  }

  QueryBuilder<Vocabulary, String?, QQueryOperations> contextTagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contextTag');
    });
  }

  QueryBuilder<Vocabulary, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Vocabulary, String?, QQueryOperations> exmapleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exmaple');
    });
  }

  QueryBuilder<Vocabulary, String?, QQueryOperations>
      exmapleAudioPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exmapleAudioPath');
    });
  }

  QueryBuilder<Vocabulary, DateTime?, QQueryOperations>
      lastStudiedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastStudiedAt');
    });
  }

  QueryBuilder<Vocabulary, String, QQueryOperations> meaningProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meaning');
    });
  }

  QueryBuilder<Vocabulary, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Vocabulary, DateTime?, QQueryOperations> nextReviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nextReview');
    });
  }

  QueryBuilder<Vocabulary, String?, QQueryOperations> posProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pos');
    });
  }

  QueryBuilder<Vocabulary, int, QQueryOperations> proficiencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proficiency');
    });
  }

  QueryBuilder<Vocabulary, String?, QQueryOperations> pronunciationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pronunciation');
    });
  }

  QueryBuilder<Vocabulary, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
