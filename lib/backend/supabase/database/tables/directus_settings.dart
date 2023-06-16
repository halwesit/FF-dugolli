import '../database.dart';

class DirectusSettingsTable extends SupabaseTable<DirectusSettingsRow> {
  @override
  String get tableName => 'directus_settings';

  @override
  DirectusSettingsRow createRow(Map<String, dynamic> data) =>
      DirectusSettingsRow(data);
}

class DirectusSettingsRow extends SupabaseDataRow {
  DirectusSettingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusSettingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get projectName => getField<String>('project_name')!;
  set projectName(String value) => setField<String>('project_name', value);

  String? get projectUrl => getField<String>('project_url');
  set projectUrl(String? value) => setField<String>('project_url', value);

  String? get projectColor => getField<String>('project_color');
  set projectColor(String? value) => setField<String>('project_color', value);

  String? get projectLogo => getField<String>('project_logo');
  set projectLogo(String? value) => setField<String>('project_logo', value);

  String? get publicForeground => getField<String>('public_foreground');
  set publicForeground(String? value) =>
      setField<String>('public_foreground', value);

  String? get publicBackground => getField<String>('public_background');
  set publicBackground(String? value) =>
      setField<String>('public_background', value);

  String? get publicNote => getField<String>('public_note');
  set publicNote(String? value) => setField<String>('public_note', value);

  int? get authLoginAttempts => getField<int>('auth_login_attempts');
  set authLoginAttempts(int? value) =>
      setField<int>('auth_login_attempts', value);

  String? get authPasswordPolicy => getField<String>('auth_password_policy');
  set authPasswordPolicy(String? value) =>
      setField<String>('auth_password_policy', value);

  String? get storageAssetTransform =>
      getField<String>('storage_asset_transform');
  set storageAssetTransform(String? value) =>
      setField<String>('storage_asset_transform', value);

  dynamic? get storageAssetPresets =>
      getField<dynamic>('storage_asset_presets');
  set storageAssetPresets(dynamic? value) =>
      setField<dynamic>('storage_asset_presets', value);

  String? get customCss => getField<String>('custom_css');
  set customCss(String? value) => setField<String>('custom_css', value);

  String? get storageDefaultFolder =>
      getField<String>('storage_default_folder');
  set storageDefaultFolder(String? value) =>
      setField<String>('storage_default_folder', value);

  dynamic? get basemaps => getField<dynamic>('basemaps');
  set basemaps(dynamic? value) => setField<dynamic>('basemaps', value);

  String? get mapboxKey => getField<String>('mapbox_key');
  set mapboxKey(String? value) => setField<String>('mapbox_key', value);

  dynamic? get moduleBar => getField<dynamic>('module_bar');
  set moduleBar(dynamic? value) => setField<dynamic>('module_bar', value);

  String? get projectDescriptor => getField<String>('project_descriptor');
  set projectDescriptor(String? value) =>
      setField<String>('project_descriptor', value);

  dynamic? get translationStrings => getField<dynamic>('translation_strings');
  set translationStrings(dynamic? value) =>
      setField<dynamic>('translation_strings', value);

  String get defaultLanguage => getField<String>('default_language')!;
  set defaultLanguage(String value) =>
      setField<String>('default_language', value);

  dynamic? get customAspectRatios => getField<dynamic>('custom_aspect_ratios');
  set customAspectRatios(dynamic? value) =>
      setField<dynamic>('custom_aspect_ratios', value);
}
