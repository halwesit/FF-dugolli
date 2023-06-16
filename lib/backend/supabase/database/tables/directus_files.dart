import '../database.dart';

class DirectusFilesTable extends SupabaseTable<DirectusFilesRow> {
  @override
  String get tableName => 'directus_files';

  @override
  DirectusFilesRow createRow(Map<String, dynamic> data) =>
      DirectusFilesRow(data);
}

class DirectusFilesRow extends SupabaseDataRow {
  DirectusFilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DirectusFilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get storage => getField<String>('storage')!;
  set storage(String value) => setField<String>('storage', value);

  String? get filenameDisk => getField<String>('filename_disk');
  set filenameDisk(String? value) => setField<String>('filename_disk', value);

  String get filenameDownload => getField<String>('filename_download')!;
  set filenameDownload(String value) =>
      setField<String>('filename_download', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get folder => getField<String>('folder');
  set folder(String? value) => setField<String>('folder', value);

  String? get uploadedBy => getField<String>('uploaded_by');
  set uploadedBy(String? value) => setField<String>('uploaded_by', value);

  DateTime get uploadedOn => getField<DateTime>('uploaded_on')!;
  set uploadedOn(DateTime value) => setField<DateTime>('uploaded_on', value);

  String? get modifiedBy => getField<String>('modified_by');
  set modifiedBy(String? value) => setField<String>('modified_by', value);

  DateTime get modifiedOn => getField<DateTime>('modified_on')!;
  set modifiedOn(DateTime value) => setField<DateTime>('modified_on', value);

  String? get charset => getField<String>('charset');
  set charset(String? value) => setField<String>('charset', value);

  int? get filesize => getField<int>('filesize');
  set filesize(int? value) => setField<int>('filesize', value);

  int? get width => getField<int>('width');
  set width(int? value) => setField<int>('width', value);

  int? get height => getField<int>('height');
  set height(int? value) => setField<int>('height', value);

  int? get duration => getField<int>('duration');
  set duration(int? value) => setField<int>('duration', value);

  String? get embed => getField<String>('embed');
  set embed(String? value) => setField<String>('embed', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get tags => getField<String>('tags');
  set tags(String? value) => setField<String>('tags', value);

  dynamic? get metadata => getField<dynamic>('metadata');
  set metadata(dynamic? value) => setField<dynamic>('metadata', value);
}
