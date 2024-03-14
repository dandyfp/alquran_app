// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSurahCollectionCollection on Isar {
  IsarCollection<SurahCollection> get surahCollections => this.collection();
}

const SurahCollectionSchema = CollectionSchema(
  name: r'SurahCollection',
  id: 7167559995064913286,
  properties: {
    r'englishName': PropertySchema(
      id: 0,
      name: r'englishName',
      type: IsarType.string,
    ),
    r'englishNameTranslation': PropertySchema(
      id: 1,
      name: r'englishNameTranslation',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 3,
      name: r'number',
      type: IsarType.long,
    ),
    r'numberOfAyahs': PropertySchema(
      id: 4,
      name: r'numberOfAyahs',
      type: IsarType.long,
    ),
    r'revelationType': PropertySchema(
      id: 5,
      name: r'revelationType',
      type: IsarType.string,
    )
  },
  estimateSize: _surahCollectionEstimateSize,
  serialize: _surahCollectionSerialize,
  deserialize: _surahCollectionDeserialize,
  deserializeProp: _surahCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _surahCollectionGetId,
  getLinks: _surahCollectionGetLinks,
  attach: _surahCollectionAttach,
  version: '3.1.0+1',
);

int _surahCollectionEstimateSize(
  SurahCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.englishName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.englishNameTranslation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.revelationType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _surahCollectionSerialize(
  SurahCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.englishName);
  writer.writeString(offsets[1], object.englishNameTranslation);
  writer.writeString(offsets[2], object.name);
  writer.writeLong(offsets[3], object.number);
  writer.writeLong(offsets[4], object.numberOfAyahs);
  writer.writeString(offsets[5], object.revelationType);
}

SurahCollection _surahCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SurahCollection(
    englishName: reader.readStringOrNull(offsets[0]),
    englishNameTranslation: reader.readStringOrNull(offsets[1]),
    name: reader.readStringOrNull(offsets[2]),
    number: reader.readLongOrNull(offsets[3]),
    numberOfAyahs: reader.readLongOrNull(offsets[4]),
    revelationType: reader.readStringOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _surahCollectionDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _surahCollectionGetId(SurahCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _surahCollectionGetLinks(SurahCollection object) {
  return [];
}

void _surahCollectionAttach(
    IsarCollection<dynamic> col, Id id, SurahCollection object) {
  object.id = id;
}

extension SurahCollectionQueryWhereSort
    on QueryBuilder<SurahCollection, SurahCollection, QWhere> {
  QueryBuilder<SurahCollection, SurahCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SurahCollectionQueryWhere
    on QueryBuilder<SurahCollection, SurahCollection, QWhereClause> {
  QueryBuilder<SurahCollection, SurahCollection, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterWhereClause> idBetween(
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

extension SurahCollectionQueryFilter
    on QueryBuilder<SurahCollection, SurahCollection, QFilterCondition> {
  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'englishName',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'englishName',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'englishName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'englishNameTranslation',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'englishNameTranslation',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishNameTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'englishNameTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'englishNameTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'englishNameTranslation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'englishNameTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'englishNameTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishNameTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishNameTranslation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishNameTranslation',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      englishNameTranslationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishNameTranslation',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameLessThan(
    String? value, {
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberOfAyahsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numberOfAyahs',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberOfAyahsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numberOfAyahs',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberOfAyahsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfAyahs',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberOfAyahsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfAyahs',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberOfAyahsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfAyahs',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      numberOfAyahsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfAyahs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'revelationType',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'revelationType',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revelationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'revelationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'revelationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'revelationType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'revelationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'revelationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'revelationType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'revelationType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revelationType',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterFilterCondition>
      revelationTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'revelationType',
        value: '',
      ));
    });
  }
}

extension SurahCollectionQueryObject
    on QueryBuilder<SurahCollection, SurahCollection, QFilterCondition> {}

extension SurahCollectionQueryLinks
    on QueryBuilder<SurahCollection, SurahCollection, QFilterCondition> {}

extension SurahCollectionQuerySortBy
    on QueryBuilder<SurahCollection, SurahCollection, QSortBy> {
  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByEnglishNameTranslation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishNameTranslation', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByEnglishNameTranslationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishNameTranslation', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByNumberOfAyahs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfAyahs', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByNumberOfAyahsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfAyahs', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByRevelationType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationType', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      sortByRevelationTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationType', Sort.desc);
    });
  }
}

extension SurahCollectionQuerySortThenBy
    on QueryBuilder<SurahCollection, SurahCollection, QSortThenBy> {
  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByEnglishNameTranslation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishNameTranslation', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByEnglishNameTranslationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishNameTranslation', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByNumberOfAyahs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfAyahs', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByNumberOfAyahsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfAyahs', Sort.desc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByRevelationType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationType', Sort.asc);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QAfterSortBy>
      thenByRevelationTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationType', Sort.desc);
    });
  }
}

extension SurahCollectionQueryWhereDistinct
    on QueryBuilder<SurahCollection, SurahCollection, QDistinct> {
  QueryBuilder<SurahCollection, SurahCollection, QDistinct>
      distinctByEnglishName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'englishName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QDistinct>
      distinctByEnglishNameTranslation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'englishNameTranslation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QDistinct>
      distinctByNumberOfAyahs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfAyahs');
    });
  }

  QueryBuilder<SurahCollection, SurahCollection, QDistinct>
      distinctByRevelationType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'revelationType',
          caseSensitive: caseSensitive);
    });
  }
}

extension SurahCollectionQueryProperty
    on QueryBuilder<SurahCollection, SurahCollection, QQueryProperty> {
  QueryBuilder<SurahCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SurahCollection, String?, QQueryOperations>
      englishNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'englishName');
    });
  }

  QueryBuilder<SurahCollection, String?, QQueryOperations>
      englishNameTranslationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'englishNameTranslation');
    });
  }

  QueryBuilder<SurahCollection, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<SurahCollection, int?, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<SurahCollection, int?, QQueryOperations>
      numberOfAyahsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfAyahs');
    });
  }

  QueryBuilder<SurahCollection, String?, QQueryOperations>
      revelationTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'revelationType');
    });
  }
}
