import 'dart:ui';

import 'package:animated_list/animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '/db/database.dart';
import '/provider/history_provider.dart';
import '/widget/back_button.dart';

class HistoryScreen extends HookConsumerWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyProvider);

    final formatter = useMemoized(() => DateFormat('dd MMMM yyyy'));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('History'),
            floating: true,
            snap: true,
            elevation: 1,
            leading: CustomBackButton(),
          ),
          if (history.value != null)
            SliverImplicitlyAnimatedList(
              items: history.value!,
              itemBuilder: (context, animation, item, i) {
                return SizeFadeTransition(
                  sizeFraction: 0.7,
                  curve: Curves.easeInOut,
                  animation: animation,
                  child: _Item(
                    entry: item,
                    title: formatter.format(item.date),
                  ),
                );
              },
              areItemsTheSame: (oldItem, newItem) {
                return oldItem.id == newItem.id;
              },
            ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.entry,
    required this.title,
  });

  final Entry entry;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Container(
        height: 32,
        width: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white54),
        ),
        child: Center(
          child: Text(
            '${entry.score} / 27',
            style: const TextStyle(
              fontFeatures: [FontFeature.tabularFigures()],
            ),
          ),
        ),
      ),
      onTap: () {
        context.go('/history/${entry.id}');
      },
    );
  }
}
