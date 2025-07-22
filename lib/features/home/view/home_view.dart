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
              Text('Display L', style: context.displayLarge),
              Text('Display M', style: context.displayMedium),
              Text('Display S', style: context.displaySmall),
              Text('Headline L', style: context.headlineLarge),
              Text('Headline M', style: context.headlineMedium),
              Text('Headline S', style: context.headlineSmall),
              Text('Title L', style: context.titleLarge),
              Text('Title M', style: context.titleMedium),
              Text('Title S', style: context.titleSmall),
              Text('Body L', style: context.bodyLarge),
              Text('Body M', style: context.bodyMedium),
              Text('Body S', style: context.bodySmall),
              Text('Label L', style: context.labelLarge),
              Text('Label M', style: context.labelMedium),
              Text('Label S', style: context.labelSmall),
            ],
          ),
        ),
      ),
    );
  }
}
