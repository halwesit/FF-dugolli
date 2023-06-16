import '../database.dart';

class DirectusUsersTable extends SupabaseTable<DirectusUsersRow> {
  @override
  String get tableName => 'directus_users';

  @override
  DirectusUsersRow createRow(Map<String, dynamic> data) =>
      DirectusUsersRow(data);
}

class DirectusUsersRow extends SupabaseDataRow {
  DirectusUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusUsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  dynamic? get tags => getField<dynamic>('tags');
  set tags(dynamic? value) => setField<dynamic>('tags', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  String? get theme => getField<String>('theme');
  set theme(String? value) => setField<String>('theme', value);

  String? get tfaSecret => getField<String>('tfa_secret');
  set tfaSecret(String? value) => setField<String>('tfa_secret', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  DateTime? get lastAccess => getField<DateTime>('last_access');
  set lastAccess(DateTime? value) => setField<DateTime>('last_access', value);

  String? get lastPage => getField<String>('last_page');
  set lastPage(String? value) => setField<String>('last_page', value);

  String get provider => getField<String>('provider')!;
  set provider(String value) => setField<String>('provider', value);

  String? get externalIdentifier => getField<String>('external_identifier');
  set externalIdentifier(String? value) =>
      setField<String>('external_identifier', value);

  dynamic? get authData => getField<dynamic>('auth_data');
  set authData(dynamic? value) => setField<dynamic>('auth_data', value);

  bool? get emailNotifications => getField<bool>('email_notifications');
  set emailNotifications(bool? value) =>
      setField<bool>('email_notifications', value);
}
