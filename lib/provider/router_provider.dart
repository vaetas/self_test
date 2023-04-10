import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/screen/entry_screen.dart';
import '/screen/history_screen.dart';
import '/screen/home_screen.dart';
import '/screen/questionnaire_screen.dart';
import '/screen/settings_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'questionnaire',
            builder: (context, state) => const QuestionnaireScreen(),
          ),
          GoRoute(
            path: 'history',
            builder: (context, state) => const HistoryScreen(),
            routes: [
              GoRoute(
                path: ':entryId',
                builder: (context, state) => EntryScreen(
                  entryId: int.parse(state.params['entryId']!),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
