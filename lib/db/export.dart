import '/db/database.dart';

class Export {
  const Export({
    required this.version,
    required this.createdAt,
    required this.entries,
  });

  factory Export.fromJson(Map<String, dynamic> json) {
    return Export(
      version: json['version'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  final int version;
  final DateTime createdAt;
  final List<Entry> entries;

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt.toUtc().toIso8601String(),
      'version': version,
      'entries': entries.map((e) {
        return {
          'id': e.id,
          'date': e.date.toIso8601String(),
          'score': e.score,
          'type': e.type,
          'questionnaire': e.questionnaire.toJson(),
          'note': e.note,
        };
      }).toList(),
    };
  }
}
