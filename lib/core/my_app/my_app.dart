import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:marker_project/features/home_page.dart';

import '../core.dart';



class MyApp extends StatelessWidget {
  final bool isShowOnboarding;
  
  const MyApp({super.key, required this.isShowOnboarding});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return BlocBuilder<LanguageCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp(
              title: 'Marker Project',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: locale, 
              theme: lightTheme, 
              darkTheme: darkTheme,
              themeMode: themeMode, 
              home: isShowOnboarding ? const HomePage() : OnboardingScreen(),
            );
          },
        );
      },
    );
  }
}
