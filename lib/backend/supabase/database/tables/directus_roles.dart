import '../database.dart';

class DirectusRolesTable extends SupabaseTable<DirectusRolesRow> {
  @override
  String get tableName => 'directus_roles';

  @override
  DirectusRolesRow createRow(Map<String, dynamic> data) =>
      DirectusRolesRow(data);
}

class DirectusRolesRow extends SupabaseDataRow {
  DirectusRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusRolesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get icon => getField<String>('icon')!;
  set icon(String value) => setField<String>('icon', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get ipAccess => getField<String>('ip_access');
  set ipAccess(String? value) => setField<String>('ip_access', value);

  bool get enforceTfa => getField<bool>('enforce_tfa')!;
  set enforceTfa(bool value) => setField<bool>('enforce_tfa', value);

  bool get adminAccess => getField<bool>('admin_access')!;
  set adminAccess(bool value) => setField<bool>('admin_access', value);

  bool get appAccess => getField<bool>('app_access')!;
  set appAccess(bool value) => setField<bool>('app_access', value);
}
