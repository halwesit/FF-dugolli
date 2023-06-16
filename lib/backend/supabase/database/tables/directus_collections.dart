import '../database.dart';

class DirectusCollectionsTable extends SupabaseTable<DirectusCollectionsRow> {
  @override
  String get tableName => 'directus_collections';

  @override
  DirectusCollectionsRow createRow(Map<String, dynamic> data) =>
      DirectusCollectionsRow(data);
}

class DirectusCollectionsRow extends SupabaseDataRow {
  DirectusCollectionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusCollectionsTable();

  String get collection => getField<String>('collection')!;
  set collection(String value) => setField<String>('collection', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  String? get displayTemplate => getField<String>('display_template');
  set displayTemplate(String? value) =>
      setField<String>('display_template', value);

  bool get hidden => getField<bool>('hidden')!;
  set hidden(bool value) => setField<bool>('hidden', value);

  bool get singleton => getField<bool>('singleton')!;
  set singleton(bool value) => setField<bool>('singleton', value);

  dynamic? get translations => getField<dynamic>('translations');
  set translations(dynamic? value) => setField<dynamic>('translations', value);

  String? get archiveField => getField<String>('archive_field');
  set archiveField(String? value) => setField<String>('archive_field', value);

  bool get archiveAppFilter => getField<bool>('archive_app_filter')!;
  set archiveAppFilter(bool value) =>
      setField<bool>('archive_app_filter', value);

  String? get archiveValue => getField<String>('archive_value');
  set archiveValue(String? value) => setField<String>('archive_value', value);

  String? get unarchiveValue => getField<String>('unarchive_value');
  set unarchiveValue(String? value) =>
      setField<String>('unarchive_value', value);

  String? get sortField => getField<String>('sort_field');
  set sortField(String? value) => setField<String>('sort_field', value);

  String? get accountability => getField<String>('accountability');
  set accountability(String? value) =>
      setField<String>('accountability', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  dynamic? get itemDuplicationFields =>
      getField<dynamic>('item_duplication_fields');
  set itemDuplicationFields(dynamic? value) =>
      setField<dynamic>('item_duplication_fields', value);

  int? get sort => getField<int>('sort');
  set sort(int? value) => setField<int>('sort', value);

  String? get group => getField<String>('group');
  set group(String? value) => setField<String>('group', value);

  String get collapse => getField<String>('collapse')!;
  set collapse(String value) => setField<String>('collapse', value);
}
