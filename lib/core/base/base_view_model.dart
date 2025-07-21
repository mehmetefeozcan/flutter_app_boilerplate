import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';

part 'base_view_model.g.dart';

abstract class BaseViewModel = _BaseViewModelBase with _$BaseViewModel;

abstract class _BaseViewModelBase with Store {
  @observable
  bool isLoading = false, isRequesting = false;

  late BuildContext ctx;

  void setContext(BuildContext context);
  void init();

  void goBack(String path) {
    if (ctx.canPop()) {
      ctx.pop();
    } else {
      ctx.replace(path);
    }
  }

  @action
  void changeLoading() => isLoading = !isLoading;

  @action
  void changeRequesting() => isRequesting = !isRequesting;
}
