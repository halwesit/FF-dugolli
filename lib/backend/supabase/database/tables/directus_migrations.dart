import '../database.dart';

class DirectusMigrationsTable extends SupabaseTable<DirectusMigrationsRow> {
  @override
  String get tableName => 'directus_migrations';

  @override
  DirectusMigrationsRow createRow(Map<String, dynamic> data) =>
      DirectusMigrationsRow(data);
}

class DirectusMigrationsRow extends SupabaseDataRow {
  DirectusMigrationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusMigrationsTable();

  String get version => getField<String>('version')!;
  set version(String value) => setField<String>('version', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);
}
