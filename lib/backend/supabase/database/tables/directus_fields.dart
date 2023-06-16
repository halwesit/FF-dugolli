import '../database.dart';

class DirectusFieldsTable extends SupabaseTable<DirectusFieldsRow> {
  @override
  String get tableName => 'directus_fields';

  @override
  DirectusFieldsRow createRow(Map<String, dynamic> data) =>
      DirectusFieldsRow(data);
}

class DirectusFieldsRow extends SupabaseDataRow {
  DirectusFieldsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusFieldsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get collection => getField<String>('collection')!;
  set collection(String value) => setField<String>('collection', value);

  String get field => getField<String>('field')!;
  set field(String value) => setField<String>('field', value);

  String? get special => getField<String>('special');
  set special(String? value) => setField<String>('special', value);

  String? get interface => getField<String>('interface');
  set interface(String? value) => setField<String>('interface', value);

  dynamic? get options => getField<dynamic>('options');
  set options(dynamic? value) => setField<dynamic>('options', value);

  String? get display => getField<String>('display');
  set display(String? value) => setField<String>('display', value);

  dynamic? get displayOptions => getField<dynamic>('display_options');
  set displayOptions(dynamic? value) =>
      setField<dynamic>('display_options', value);

  bool get readonly => getField<bool>('readonly')!;
  set readonly(bool value) => setField<bool>('readonly', value);

  bool get hidden => getField<bool>('hidden')!;
  set hidden(bool value) => setField<bool>('hidden', value);

  int? get sort => getField<int>('sort');
  set sort(int? value) => setField<int>('sort', value);

  String? get width => getField<String>('width');
  set width(String? value) => setField<String>('width', value);

  dynamic? get translations => getField<dynamic>('translations');
  set translations(dynamic? value) => setField<dynamic>('translations', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  dynamic? get conditions => getField<dynamic>('conditions');
  set conditions(dynamic? value) => setField<dynamic>('conditions', value);

  bool? get required => getField<bool>('required');
  set required(bool? value) => setField<bool>('required', value);

  String? get group => getField<String>('group');
  set group(String? value) => setField<String>('group', value);

  dynamic? get validation => getField<dynamic>('validation');
  set validation(dynamic? value) => setField<dynamic>('validation', value);

  String? get validationMessage => getField<String>('validation_message');
  set validationMessage(String? value) =>
      setField<String>('validation_message', value);
}
