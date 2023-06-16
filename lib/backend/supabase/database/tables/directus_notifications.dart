import '../database.dart';

class DirectusNotificationsTable
    extends SupabaseTable<DirectusNotificationsRow> {
  @override
  String get tableName => 'directus_notifications';

  @override
  DirectusNotificationsRow createRow(Map<String, dynamic> data) =>
      DirectusNotificationsRow(data);
}

class DirectusNotificationsRow extends SupabaseDataRow {
  DirectusNotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusNotificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String get recipient => getField<String>('recipient')!;
  set recipient(String value) => setField<String>('recipient', value);

  String? get sender => getField<String>('sender');
  set sender(String? value) => setField<String>('sender', value);

  String get subject => getField<String>('subject')!;
  set subject(String value) => setField<String>('subject', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  String? get collection => getField<String>('collection');
  set collection(String? value) => setField<String>('collection', value);

  String? get item => getField<String>('item');
  set item(String? value) => setField<String>('item', value);
}
