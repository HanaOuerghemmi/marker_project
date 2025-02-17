import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'widgets/language_dropdown.dart';
import 'widgets/theme_toggle_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.settings)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [ThemeToggleButton(), LanguageDropdown()],
        ),
      ),
    );
  }
}
