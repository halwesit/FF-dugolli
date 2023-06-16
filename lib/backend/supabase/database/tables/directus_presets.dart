import '../database.dart';

class DirectusPresetsTable extends SupabaseTable<DirectusPresetsRow> {
  @override
  String get tableName => 'directus_presets';

  @override
  DirectusPresetsRow createRow(Map<String, dynamic> data) =>
      DirectusPresetsRow(data);
}

class DirectusPresetsRow extends SupabaseDataRow {
  DirectusPresetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusPresetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get bookmark => getField<String>('bookmark');
  set bookmark(String? value) => setField<String>('bookmark', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get collection => getField<String>('collection');
  set collection(String? value) => setField<String>('collection', value);

  String? get search => getField<String>('search');
  set search(String? value) => setField<String>('search', value);

  String? get layout => getField<String>('layout');
  set layout(String? value) => setField<String>('layout', value);

  dynamic? get layoutQuery => getField<dynamic>('layout_query');
  set layoutQuery(dynamic? value) => setField<dynamic>('layout_query', value);

  dynamic? get layoutOptions => getField<dynamic>('layout_options');
  set layoutOptions(dynamic? value) =>
      setField<dynamic>('layout_options', value);

  int? get refreshInterval => getField<int>('refresh_interval');
  set refreshInterval(int? value) => setField<int>('refresh_interval', value);

  dynamic? get filter => getField<dynamic>('filter');
  set filter(dynamic? value) => setField<dynamic>('filter', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);
}
