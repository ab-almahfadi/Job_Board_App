import '../database.dart';

class JobBoard2Table extends SupabaseTable<JobBoard2Row> {
  @override
  String get tableName => 'Job Board - 2';

  @override
  JobBoard2Row createRow(Map<String, dynamic> data) => JobBoard2Row(data);
}

class JobBoard2Row extends SupabaseDataRow {
  JobBoard2Row(super.data);

  @override
  SupabaseTable get table => JobBoard2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get jobDetails => getField<String>('jobDetails');
  set jobDetails(String? value) => setField<String>('jobDetails', value);

  String? get staffName => getField<String>('staffName');
  set staffName(String? value) => setField<String>('staffName', value);

  String? get jobDescription => getField<String>('jobDescription');
  set jobDescription(String? value) =>
      setField<String>('jobDescription', value);

  String? get jobLocation => getField<String>('jobLocation');
  set jobLocation(String? value) => setField<String>('jobLocation', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  bool? get acceptance => getField<bool>('acceptance');
  set acceptance(bool? value) => setField<bool>('acceptance', value);

  DateTime? get timeStart => getField<DateTime>('timeStart');
  set timeStart(DateTime? value) => setField<DateTime>('timeStart', value);

  DateTime? get timeEnd => getField<DateTime>('timeEnd');
  set timeEnd(DateTime? value) => setField<DateTime>('timeEnd', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get timeSheet => getField<bool>('timeSheet');
  set timeSheet(bool? value) => setField<bool>('timeSheet', value);
}
