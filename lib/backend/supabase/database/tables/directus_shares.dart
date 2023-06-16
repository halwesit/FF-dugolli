import '../database.dart';

class DirectusSharesTable extends SupabaseTable<DirectusSharesRow> {
  @override
  String get tableName => 'directus_shares';

  @override
  DirectusSharesRow createRow(Map<String, dynamic> data) =>
      DirectusSharesRow(data);
}

class DirectusSharesRow extends SupabaseDataRow {
  DirectusSharesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusSharesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get collection => getField<String>('collection');
  set collection(String? value) => setField<String>('collection', value);

  String? get item => getField<String>('item');
  set item(String? value) => setField<String>('item', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get userCreated => getField<String>('user_created');
  set userCreated(String? value) => setField<String>('user_created', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  DateTime? get dateStart => getField<DateTime>('date_start');
  set dateStart(DateTime? value) => setField<DateTime>('date_start', value);

  DateTime? get dateEnd => getField<DateTime>('date_end');
  set dateEnd(DateTime? value) => setField<DateTime>('date_end', value);

  int? get timesUsed => getField<int>('times_used');
  set timesUsed(int? value) => setField<int>('times_used', value);

  int? get maxUses => getField<int>('max_uses');
  set maxUses(int? value) => setField<int>('max_uses', value);
}
