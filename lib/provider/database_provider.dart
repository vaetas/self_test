import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/db/database.dart';

final databaseProvider = Provider<Database>((ref) {
  return Database();
});
