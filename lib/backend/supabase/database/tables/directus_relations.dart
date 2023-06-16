import '../database.dart';

class DirectusRelationsTable extends SupabaseTable<DirectusRelationsRow> {
  @override
  String get tableName => 'directus_relations';

  @override
  DirectusRelationsRow createRow(Map<String, dynamic> data) =>
      DirectusRelationsRow(data);
}

class DirectusRelationsRow extends SupabaseDataRow {
  DirectusRelationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusRelationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get manyCollection => getField<String>('many_collection')!;
  set manyCollection(String value) =>
      setField<String>('many_collection', value);

  String get manyField => getField<String>('many_field')!;
  set manyField(String value) => setField<String>('many_field', value);

  String? get oneCollection => getField<String>('one_collection');
  set oneCollection(String? value) => setField<String>('one_collection', value);

  String? get oneField => getField<String>('one_field');
  set oneField(String? value) => setField<String>('one_field', value);

  String? get oneCollectionField => getField<String>('one_collection_field');
  set oneCollectionField(String? value) =>
      setField<String>('one_collection_field', value);

  String? get oneAllowedCollections =>
      getField<String>('one_allowed_collections');
  set oneAllowedCollections(String? value) =>
      setField<String>('one_allowed_collections', value);

  String? get junctionField => getField<String>('junction_field');
  set junctionField(String? value) => setField<String>('junction_field', value);

  String? get sortField => getField<String>('sort_field');
  set sortField(String? value) => setField<String>('sort_field', value);

  String get oneDeselectAction => getField<String>('one_deselect_action')!;
  set oneDeselectAction(String value) =>
      setField<String>('one_deselect_action', value);
}
