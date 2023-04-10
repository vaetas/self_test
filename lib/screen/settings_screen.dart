import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '/provider/database_provider.dart';
import '/widget/back_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: const CustomBackButton(),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('GitHub repository'),
            leading: const HeroIcon(HeroIcons.informationCircle),
            minLeadingWidth: 0,
            onTap: () {
              launchUrl(
                Uri(
                  scheme: 'https',
                  host: 'github.com',
                  path: 'vaetas/self_test',
                ),
              );
            },
          ),
          _ExportTile(),
        ],
      ),
    );
  }
}

class _ExportTile extends HookConsumerWidget {
  const _ExportTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final export = useCallback(
      () async {
        final db = ref.read(databaseProvider);
        final data = await db.export();
        final output = await compute(
          (d) {
            return jsonEncode(d.toJson());
          },
          data,
        );
        final tempDir = await getTemporaryDirectory();
        final file = File(
          p.join(
            tempDir.path,
            'export_${data.createdAt.millisecondsSinceEpoch}.json',
          ),
        );
        await file.writeAsString(output);
        final params = SaveFileDialogParams(sourceFilePath: file.path);
        final filePath = await FlutterFileDialog.saveFile(params: params);
        print(output);
      },
      [],
    );

    return ListTile(
      title: const Text('Export data'),
      leading: const HeroIcon(HeroIcons.arrowDownTray),
      minLeadingWidth: 0,
      onTap: export,
    );
  }
}
