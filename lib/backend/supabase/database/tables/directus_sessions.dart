import '../database.dart';

class DirectusSessionsTable extends SupabaseTable<DirectusSessionsRow> {
  @override
  String get tableName => 'directus_sessions';

  @override
  DirectusSessionsRow createRow(Map<String, dynamic> data) =>
      DirectusSessionsRow(data);
}

class DirectusSessionsRow extends SupabaseDataRow {
  DirectusSessionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusSessionsTable();

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  DateTime get expires => getField<DateTime>('expires')!;
  set expires(DateTime value) => setField<DateTime>('expires', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);

  String? get userAgent => getField<String>('user_agent');
  set userAgent(String? value) => setField<String>('user_agent', value);

  String? get share => getField<String>('share');
  set share(String? value) => setField<String>('share', value);

  String? get origin => getField<String>('origin');
  set origin(String? value) => setField<String>('origin', value);
}
