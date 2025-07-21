import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/core/base/base_view.dart';
import 'package:flutter_bloc_app/features/home/view_model/home_view_model.dart';
import 'package:flutter_bloc_app/l10n/app_localizations.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Center(child: Text(AppLocalizations.of(context)!.helloWorld));
  }
}
