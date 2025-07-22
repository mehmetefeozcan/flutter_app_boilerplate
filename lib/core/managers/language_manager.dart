import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'language_manager.g.dart';

class LanguageManager = _LanguageManagerBase with _$LanguageManager;

enum LangCodes {
  tr('tr'),
  en('en');

  final String value;
  const LangCodes(this.value);
}

abstract class _LanguageManagerBase with Store {
  @observable
  LangCodes langCode = LangCodes.en;

  @action
  void changeLang(LangCodes lang) {
    langCode = lang;
  }

  Locale getActiveLang() => Locale(langCode.value);
}
