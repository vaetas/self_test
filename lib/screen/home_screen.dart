import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pressable/pressable.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Depression Self Test'),
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            context.go('/settings');
          },
          icon: const HeroIcon(HeroIcons.cog6Tooth),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.go('/history');
            },
            icon: const HeroIcon(HeroIcons.calendar),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: Text(
              'Over the last 2 weeks, how often have you been bothered by any of the following problems?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                height: 1.6,
              ),
            ),
          ),
          Pressable.scale(
            onPressed: () {
              context.go('/questionnaire');
            },
            theme: const PressableScaleTheme(
              scaleFactor: 0.85,
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white24,
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
              height: 75,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
