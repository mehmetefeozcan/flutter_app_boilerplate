import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'language_manager.g.dart';

class LanguageManager = _LanguageManagerBase with _$LanguageManager;

abstract class _LanguageManagerBase with Store {
  @observable
  String langCode = 'tr';

  @action
  void changeLang(String lang) {
    langCode = lang;
  }

  Locale getActiveLang() => Locale(langCode);
}
