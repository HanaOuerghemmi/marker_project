import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/core.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return ListTile(
      title: Text(AppLocalizations.of(context)!.changeTheme),
      trailing: IconButton(
        icon: const Icon(Icons.brightness_6),
        onPressed: () => themeCubit.toggleTheme(),
      ),
    );
  }
}
