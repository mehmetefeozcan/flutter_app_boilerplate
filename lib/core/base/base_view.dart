import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T viewModel) onPageBuilder;
  final Function(T model) onModelReady;
  final Function(T model)? onDispose;
  final T viewModel;

  const BaseView({
    super.key,
    required this.onPageBuilder,
    required this.onModelReady,
    required this.viewModel,
    this.onDispose,
  });

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T model;

  @override
  void initState() {
    model = widget.viewModel;
    widget.onModelReady(model);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) widget.onDispose!(model);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, model);
  }
}
