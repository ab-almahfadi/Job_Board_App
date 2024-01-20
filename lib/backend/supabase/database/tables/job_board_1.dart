import '../database.dart';

class JobBoard1Table extends SupabaseTable<JobBoard1Row> {
  @override
  String get tableName => 'Job Board - 1';

  @override
  JobBoard1Row createRow(Map<String, dynamic> data) => JobBoard1Row(data);
}

class JobBoard1Row extends SupabaseDataRow {
  JobBoard1Row(super.data);

  @override
  SupabaseTable get table => JobBoard1Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get offerType => getField<String>('offerType');
  set offerType(String? value) => setField<String>('offerType', value);

  String? get offerImage => getField<String>('offerImage');
  set offerImage(String? value) => setField<String>('offerImage', value);

  String? get offerDescription => getField<String>('offerDescription');
  set offerDescription(String? value) =>
      setField<String>('offerDescription', value);
}
