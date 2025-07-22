// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_manager.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LanguageManager on _LanguageManagerBase, Store {
  late final _$langCodeAtom = Atom(
    name: '_LanguageManagerBase.langCode',
    context: context,
  );

  @override
  LangCodes get langCode {
    _$langCodeAtom.reportRead();
    return super.langCode;
  }

  @override
  set langCode(LangCodes value) {
    _$langCodeAtom.reportWrite(value, super.langCode, () {
      super.langCode = value;
    });
  }

  late final _$_LanguageManagerBaseActionController = ActionController(
    name: '_LanguageManagerBase',
    context: context,
  );

  @override
  void changeLang(LangCodes lang) {
    final _$actionInfo = _$_LanguageManagerBaseActionController.startAction(
      name: '_LanguageManagerBase.changeLang',
    );
    try {
      return super.changeLang(lang);
    } finally {
      _$_LanguageManagerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
langCode: ${langCode}
    ''';
  }
}
