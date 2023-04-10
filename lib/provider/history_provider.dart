import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/db/database.dart';
import '/provider/database_provider.dart';

final historyProvider = StreamProvider<List<Entry>>(
  (ref) {
    final database = ref.watch(databaseProvider);

    return database.watchEntries().map((event) {
      return event.reversed.toList();
    });
  },
);
