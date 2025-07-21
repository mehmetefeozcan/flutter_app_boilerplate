enum AppRoutes {
  home('');

  final String value;
  const AppRoutes(this.value);

  String get toPath => '/$value';
}
