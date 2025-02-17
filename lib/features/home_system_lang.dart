import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeSystemLang extends StatelessWidget {
  const HomeSystemLang({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;

    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text(
                               localizations.helloWorld,
                               style: theme.textTheme.headlineLarge,
                             ),
                              Text(
                               localizations.welcome,
                                style: theme.textTheme.headlineMedium,
                             ),
        ],
      ),
    );
  }
}