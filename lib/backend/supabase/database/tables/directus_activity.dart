import '../database.dart';

class DirectusActivityTable extends SupabaseTable<DirectusActivityRow> {
  @override
  String get tableName => 'directus_activity';

  @override
  DirectusActivityRow createRow(Map<String, dynamic> data) =>
      DirectusActivityRow(data);
}

class DirectusActivityRow extends SupabaseDataRow {
  DirectusActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusActivityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get action => getField<String>('action')!;
  set action(String value) => setField<String>('action', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  DateTime get timestamp => getField<DateTime>('timestamp')!;
  set timestamp(DateTime value) => setField<DateTime>('timestamp', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);

  String? get userAgent => getField<String>('user_agent');
  set userAgent(String? value) => setField<String>('user_agent', value);

  String get collection => getField<String>('collection')!;
  set collection(String value) => setField<String>('collection', value);

  String get item => getField<String>('item')!;
  set item(String value) => setField<String>('item', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get origin => getField<String>('origin');
  set origin(String? value) => setField<String>('origin', value);
}
