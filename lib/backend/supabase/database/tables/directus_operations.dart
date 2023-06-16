import '../database.dart';

class DirectusOperationsTable extends SupabaseTable<DirectusOperationsRow> {
  @override
  String get tableName => 'directus_operations';

  @override
  DirectusOperationsRow createRow(Map<String, dynamic> data) =>
      DirectusOperationsRow(data);
}

class DirectusOperationsRow extends SupabaseDataRow {
  DirectusOperationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusOperationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String get key => getField<String>('key')!;
  set key(String value) => setField<String>('key', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  int get positionX => getField<int>('position_x')!;
  set positionX(int value) => setField<int>('position_x', value);

  int get positionY => getField<int>('position_y')!;
  set positionY(int value) => setField<int>('position_y', value);

  dynamic? get options => getField<dynamic>('options');
  set options(dynamic? value) => setField<dynamic>('options', value);

  String? get resolve => getField<String>('resolve');
  set resolve(String? value) => setField<String>('resolve', value);

  String? get reject => getField<String>('reject');
  set reject(String? value) => setField<String>('reject', value);

  String get flow => getField<String>('flow')!;
  set flow(String value) => setField<String>('flow', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  String? get userCreated => getField<String>('user_created');
  set userCreated(String? value) => setField<String>('user_created', value);
}
