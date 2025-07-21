// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_manager.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeManager on _ThemeManagerBase, Store {
  Computed<AppColorsBase>? _$colorsComputed;

  @override
  AppColorsBase get colors => (_$colorsComputed ??= Computed<AppColorsBase>(
    () => super.colors,
    name: '_ThemeManagerBase.colors',
  )).value;

  late final _$isDarkModeAtom = Atom(
    name: '_ThemeManagerBase.isDarkMode',
    context: context,
  );

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.reportRead();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.reportWrite(value, super.isDarkMode, () {
      super.isDarkMode = value;
    });
  }

  late final _$_ThemeManagerBaseActionController = ActionController(
    name: '_ThemeManagerBase',
    context: context,
  );

  @override
  void toggleChange() {
    final _$actionInfo = _$_ThemeManagerBaseActionController.startAction(
      name: '_ThemeManagerBase.toggleChange',
    );
    try {
      return super.toggleChange();
    } finally {
      _$_ThemeManagerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkMode: ${isDarkMode},
colors: ${colors}
    ''';
  }
}
