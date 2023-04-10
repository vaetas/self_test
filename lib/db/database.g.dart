// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $EntriesTable extends Entries with TableInfo<$EntriesTable, Entry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: DateTime.now);
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
      'score', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _questionnaireMeta =
      const VerificationMeta('questionnaire');
  @override
  late final GeneratedColumnWithTypeConverter<PersistedQuestionnaire, String>
      questionnaire = GeneratedColumn<String>(
              'questionnaire', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<PersistedQuestionnaire>(
              $EntriesTable.$converterquestionnaire);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, date, score, type, questionnaire, note];
  @override
  String get aliasedName => _alias ?? 'entries';
  @override
  String get actualTableName => 'entries';
  @override
  VerificationContext validateIntegrity(Insertable<Entry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score']!, _scoreMeta));
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    context.handle(_questionnaireMeta, const VerificationResult.success());
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Entry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Entry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      score: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}score'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      questionnaire: $EntriesTable.$converterquestionnaire.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}questionnaire'])!),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
    );
  }

  @override
  $EntriesTable createAlias(String alias) {
    return $EntriesTable(attachedDatabase, alias);
  }

  static TypeConverter<PersistedQuestionnaire, String> $converterquestionnaire =
      const QuestionnaireConverter();
}

class Entry extends DataClass implements Insertable<Entry> {
  final int id;
  final DateTime date;
  final int score;

  /// Questionnaire unique name
  final String type;
  final PersistedQuestionnaire questionnaire;
  final String? note;
  const Entry(
      {required this.id,
      required this.date,
      required this.score,
      required this.type,
      required this.questionnaire,
      this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    map['score'] = Variable<int>(score);
    map['type'] = Variable<String>(type);
    {
      final converter = $EntriesTable.$converterquestionnaire;
      map['questionnaire'] = Variable<String>(converter.toSql(questionnaire));
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  EntriesCompanion toCompanion(bool nullToAbsent) {
    return EntriesCompanion(
      id: Value(id),
      date: Value(date),
      score: Value(score),
      type: Value(type),
      questionnaire: Value(questionnaire),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory Entry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Entry(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      score: serializer.fromJson<int>(json['score']),
      type: serializer.fromJson<String>(json['type']),
      questionnaire:
          serializer.fromJson<PersistedQuestionnaire>(json['questionnaire']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'score': serializer.toJson<int>(score),
      'type': serializer.toJson<String>(type),
      'questionnaire': serializer.toJson<PersistedQuestionnaire>(questionnaire),
      'note': serializer.toJson<String?>(note),
    };
  }

  Entry copyWith(
          {int? id,
          DateTime? date,
          int? score,
          String? type,
          PersistedQuestionnaire? questionnaire,
          Value<String?> note = const Value.absent()}) =>
      Entry(
        id: id ?? this.id,
        date: date ?? this.date,
        score: score ?? this.score,
        type: type ?? this.type,
        questionnaire: questionnaire ?? this.questionnaire,
        note: note.present ? note.value : this.note,
      );
  @override
  String toString() {
    return (StringBuffer('Entry(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('score: $score, ')
          ..write('type: $type, ')
          ..write('questionnaire: $questionnaire, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, score, type, questionnaire, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Entry &&
          other.id == this.id &&
          other.date == this.date &&
          other.score == this.score &&
          other.type == this.type &&
          other.questionnaire == this.questionnaire &&
          other.note == this.note);
}

class EntriesCompanion extends UpdateCompanion<Entry> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<int> score;
  final Value<String> type;
  final Value<PersistedQuestionnaire> questionnaire;
  final Value<String?> note;
  const EntriesCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.score = const Value.absent(),
    this.type = const Value.absent(),
    this.questionnaire = const Value.absent(),
    this.note = const Value.absent(),
  });
  EntriesCompanion.insert({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    required int score,
    required String type,
    required PersistedQuestionnaire questionnaire,
    this.note = const Value.absent(),
  })  : score = Value(score),
        type = Value(type),
        questionnaire = Value(questionnaire);
  static Insertable<Entry> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<int>? score,
    Expression<String>? type,
    Expression<String>? questionnaire,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (score != null) 'score': score,
      if (type != null) 'type': type,
      if (questionnaire != null) 'questionnaire': questionnaire,
      if (note != null) 'note': note,
    });
  }

  EntriesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? date,
      Value<int>? score,
      Value<String>? type,
      Value<PersistedQuestionnaire>? questionnaire,
      Value<String?>? note}) {
    return EntriesCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      score: score ?? this.score,
      type: type ?? this.type,
      questionnaire: questionnaire ?? this.questionnaire,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (questionnaire.present) {
      final converter = $EntriesTable.$converterquestionnaire;
      map['questionnaire'] =
          Variable<String>(converter.toSql(questionnaire.value));
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntriesCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('score: $score, ')
          ..write('type: $type, ')
          ..write('questionnaire: $questionnaire, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $EntriesTable entries = $EntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [entries];
}
