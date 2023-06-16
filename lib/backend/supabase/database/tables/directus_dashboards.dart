import '../database.dart';

class DirectusDashboardsTable extends SupabaseTable<DirectusDashboardsRow> {
  @override
  String get tableName => 'directus_dashboards';

  @override
  DirectusDashboardsRow createRow(Map<String, dynamic> data) =>
      DirectusDashboardsRow(data);
}

class DirectusDashboardsRow extends SupabaseDataRow {
  DirectusDashboardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusDashboardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get icon => getField<String>('icon')!;
  set icon(String value) => setField<String>('icon', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  String? get userCreated => getField<String>('user_created');
  set userCreated(String? value) => setField<String>('user_created', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);
}
