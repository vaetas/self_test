import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:self_test/db/export.dart';

import '/db/questionnaire.dart';

part 'database.g.dart';

@DataClassName('Entry')
class Entries extends Table {
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get date => dateTime().clientDefault(DateTime.now)();

  IntColumn get score => integer()();

  /// Questionnaire unique name
  TextColumn get type => text()();

  TextColumn get questionnaire => text().map(const QuestionnaireConverter())();

  TextColumn get note => text().nullable()();
}

class QuestionnaireConverter
    extends TypeConverter<PersistedQuestionnaire, String> {
  const QuestionnaireConverter();

  @override
  PersistedQuestionnaire fromSql(String fromDb) {
    return PersistedQuestionnaire.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(PersistedQuestionnaire value) {
    return json.encode(value.toJson());
  }
}

@DriftDatabase(tables: [Entries])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<Entry>> watchEntries() {
    return select(entries).watch();
  }

  Stream<Entry> watchEntry(int id) {
    return (select(entries)..where((t) => t.id.equals(id))).watchSingle();
  }

  Future<int> insertEntry(EntriesCompanion entry) {
    return into(entries).insert(entry);
  }

  Future<int> deleteEntry(int entryId) {
    return (delete(entries)..where((t) => t.id.equals(entryId))).go();
  }

  Future<Export> export() async {
    final entriesData = await select(entries).get();
    return Export(
      entries: entriesData,
      version: 1,
      createdAt: DateTime.now(),
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(
      file,
      logStatements: kDebugMode,
    );
  });
}
