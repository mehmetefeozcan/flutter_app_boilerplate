import 'package:flutter_bloc_app/core/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => ctx = context;

  @override
  void init() async {}
}
