import '../database.dart';

class DirectusWebhooksTable extends SupabaseTable<DirectusWebhooksRow> {
  @override
  String get tableName => 'directus_webhooks';

  @override
  DirectusWebhooksRow createRow(Map<String, dynamic> data) =>
      DirectusWebhooksRow(data);
}

class DirectusWebhooksRow extends SupabaseDataRow {
  DirectusWebhooksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusWebhooksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get method => getField<String>('method')!;
  set method(String value) => setField<String>('method', value);

  String get url => getField<String>('url')!;
  set url(String value) => setField<String>('url', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  bool get dataField => getField<bool>('data')!;
  set dataField(bool value) => setField<bool>('data', value);

  String get actions => getField<String>('actions')!;
  set actions(String value) => setField<String>('actions', value);

  String get collections => getField<String>('collections')!;
  set collections(String value) => setField<String>('collections', value);

  dynamic? get headers => getField<dynamic>('headers');
  set headers(dynamic? value) => setField<dynamic>('headers', value);
}
