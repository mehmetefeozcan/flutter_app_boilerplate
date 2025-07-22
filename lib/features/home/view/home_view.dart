import 'package:flutter_bloc_app/core/extension/context_extension.dart';
import 'package:flutter_bloc_app/features/home/view_model/home_view_model.dart';
import 'package:flutter_bloc_app/core/di/dependency_injection.dart';
import 'package:flutter_bloc_app/l10n/app_localizations.dart';
import 'package:flutter_bloc_app/core/managers/index.dart';
import 'package:flutter_bloc_app/core/base/base_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageManager langManager = getIt<LanguageManager>();
    final ThemeManager themeManager = getIt<ThemeManager>();

    return BaseView(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (context, viewModel) => Scaffold(body: buildBody(context)),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.displayLarge,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.displayMedium,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.displaySmall,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.headlineLarge,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.headlineMedium,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.headlineSmall,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.titleLarge,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.titleMedium,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.titleSmall,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.bodyLarge,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.bodyMedium,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.bodySmall,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.labelLarge,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.labelMedium,
              ),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: context.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
