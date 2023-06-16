import '../database.dart';

class DirectusPermissionsTable extends SupabaseTable<DirectusPermissionsRow> {
  @override
  String get tableName => 'directus_permissions';

  @override
  DirectusPermissionsRow createRow(Map<String, dynamic> data) =>
      DirectusPermissionsRow(data);
}

class DirectusPermissionsRow extends SupabaseDataRow {
  DirectusPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String get collection => getField<String>('collection')!;
  set collection(String value) => setField<String>('collection', value);

  String get action => getField<String>('action')!;
  set action(String value) => setField<String>('action', value);

  dynamic? get permissions => getField<dynamic>('permissions');
  set permissions(dynamic? value) => setField<dynamic>('permissions', value);

  dynamic? get validation => getField<dynamic>('validation');
  set validation(dynamic? value) => setField<dynamic>('validation', value);

  dynamic? get presets => getField<dynamic>('presets');
  set presets(dynamic? value) => setField<dynamic>('presets', value);

  String? get fields => getField<String>('fields');
  set fields(String? value) => setField<String>('fields', value);
}
