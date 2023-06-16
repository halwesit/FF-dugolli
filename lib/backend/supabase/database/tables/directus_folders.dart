import '../database.dart';

class DirectusFoldersTable extends SupabaseTable<DirectusFoldersRow> {
  @override
  String get tableName => 'directus_folders';

  @override
  DirectusFoldersRow createRow(Map<String, dynamic> data) =>
      DirectusFoldersRow(data);
}

class DirectusFoldersRow extends SupabaseDataRow {
  DirectusFoldersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusFoldersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get parent => getField<String>('parent');
  set parent(String? value) => setField<String>('parent', value);
}
