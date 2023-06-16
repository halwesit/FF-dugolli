import '../database.dart';

class DirectusRevisionsTable extends SupabaseTable<DirectusRevisionsRow> {
  @override
  String get tableName => 'directus_revisions';

  @override
  DirectusRevisionsRow createRow(Map<String, dynamic> data) =>
      DirectusRevisionsRow(data);
}

class DirectusRevisionsRow extends SupabaseDataRow {
  DirectusRevisionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusRevisionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get activity => getField<int>('activity')!;
  set activity(int value) => setField<int>('activity', value);

  String get collection => getField<String>('collection')!;
  set collection(String value) => setField<String>('collection', value);

  String get item => getField<String>('item')!;
  set item(String value) => setField<String>('item', value);

  dynamic? get dataField => getField<dynamic>('data');
  set dataField(dynamic? value) => setField<dynamic>('data', value);

  dynamic? get delta => getField<dynamic>('delta');
  set delta(dynamic? value) => setField<dynamic>('delta', value);

  int? get parent => getField<int>('parent');
  set parent(int? value) => setField<int>('parent', value);
}
