import '../database.dart';

class DirectusFlowsTable extends SupabaseTable<DirectusFlowsRow> {
  @override
  String get tableName => 'directus_flows';

  @override
  DirectusFlowsRow createRow(Map<String, dynamic> data) =>
      DirectusFlowsRow(data);
}

class DirectusFlowsRow extends SupabaseDataRow {
  DirectusFlowsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusFlowsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get trigger => getField<String>('trigger');
  set trigger(String? value) => setField<String>('trigger', value);

  String? get accountability => getField<String>('accountability');
  set accountability(String? value) =>
      setField<String>('accountability', value);

  dynamic? get options => getField<dynamic>('options');
  set options(dynamic? value) => setField<dynamic>('options', value);

  String? get operation => getField<String>('operation');
  set operation(String? value) => setField<String>('operation', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  String? get userCreated => getField<String>('user_created');
  set userCreated(String? value) => setField<String>('user_created', value);
}
