import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../core/core.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    final languageCubit = context.read<LanguageCubit>();

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.settings)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text(AppLocalizations.of(context)!.changeTheme),
              trailing: IconButton(
                icon: const Icon(Icons.brightness_6),
                onPressed: () => themeCubit.toggleTheme(),
              ),
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.selectLanguageOfYourChoice),
              trailing: DropdownButton<Locale>(
                value: context.watch<LanguageCubit>().state,
                items: [
                  DropdownMenuItem(
                    value: const Locale('en'),
                    child: const Text('English'),
                  ),
                  DropdownMenuItem(
                    value: const Locale('fr'),
                    child: const Text('Français'),
                  ),
                  DropdownMenuItem(
                    value: const Locale('ar'),
                    child: const Text('العربية'),
                  ),
                ],
                onChanged: (Locale? locale) {
                  if (locale != null) {
                    languageCubit.changeLanguage(locale);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
