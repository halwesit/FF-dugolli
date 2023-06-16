import '../database.dart';

class DirectusPanelsTable extends SupabaseTable<DirectusPanelsRow> {
  @override
  String get tableName => 'directus_panels';

  @override
  DirectusPanelsRow createRow(Map<String, dynamic> data) =>
      DirectusPanelsRow(data);
}

class DirectusPanelsRow extends SupabaseDataRow {
  DirectusPanelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusPanelsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get dashboard => getField<String>('dashboard')!;
  set dashboard(String value) => setField<String>('dashboard', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  bool get showHeader => getField<bool>('show_header')!;
  set showHeader(bool value) => setField<bool>('show_header', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  int get positionX => getField<int>('position_x')!;
  set positionX(int value) => setField<int>('position_x', value);

  int get positionY => getField<int>('position_y')!;
  set positionY(int value) => setField<int>('position_y', value);

  int get width => getField<int>('width')!;
  set width(int value) => setField<int>('width', value);

  int get height => getField<int>('height')!;
  set height(int value) => setField<int>('height', value);

  dynamic? get options => getField<dynamic>('options');
  set options(dynamic? value) => setField<dynamic>('options', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  String? get userCreated => getField<String>('user_created');
  set userCreated(String? value) => setField<String>('user_created', value);
}
