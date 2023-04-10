import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '/provider/database_provider.dart';
import '/provider/entry/entry_provider.dart';
import '/provider/questionnaire/questionnaire_provider.dart';
import '/widget/back_button.dart';

class EntryScreen extends HookConsumerWidget {
  const EntryScreen({
    Key? key,
    required this.entryId,
  }) : super(key: key);

  final int entryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entry = ref.watch(entryProvider(entryId));

    final format = useMemoized(() => DateFormat('dd MMMM yyyy'));

    final isMounted = useIsMounted();
    final delete = useCallback(
      () async {
        await ref.read(databaseProvider).deleteEntry(entryId);
        if (isMounted()) {
          // ignore: use_build_context_synchronously
          context.pop();
        }
      },
      [entryId],
    );

    return entry.when(
      data: (data) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(format.format(data.entry.date)),
                pinned: true,
                elevation: 1,
                leading: const CustomBackButton(),
                actions: [
                  IconButton(
                    onPressed: delete,
                    tooltip: 'Delete',
                    icon: HeroIcon(HeroIcons.trash),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '${data.entry.score}',
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                          children: const [
                            TextSpan(
                              text: ' / 27',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Text(
                          data.result.result.text,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final answer = data.result.selectedAnswers[index];
                      return _Answer(answer: answer);
                    },
                    childCount: data.result.selectedAnswers.length,
                  ),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(bottom: 64),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            leading: const CustomBackButton(),
          ),
          body: Center(
            child: Text(error.toString()),
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            leading: const CustomBackButton(),
          ),
        );
      },
    );
  }
}

class _Answer extends StatelessWidget {
  const _Answer({
    Key? key,
    required this.answer,
  }) : super(key: key);

  final SelectedAnswer answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              answer.question.text,
              style: const TextStyle(
                height: 1.6,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12,
              ),
              child: Center(
                child: Text(
                  answer.answer.text,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
