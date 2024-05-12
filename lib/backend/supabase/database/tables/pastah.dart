import '../database.dart';

class PastahTable extends SupabaseTable<PastahRow> {
  @override
  String get tableName => 'pastah';

  @override
  PastahRow createRow(Map<String, dynamic> data) => PastahRow(data);
}

class PastahRow extends SupabaseDataRow {
  PastahRow(super.data);

  @override
  SupabaseTable get table => PastahTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeDaPasta => getField<String>('nome da pasta');
  set nomeDaPasta(String? value) => setField<String>('nome da pasta', value);

  String? get pastas => getField<String>('pastas');
  set pastas(String? value) => setField<String>('pastas', value);

  String? get userid2 => getField<String>('userid2');
  set userid2(String? value) => setField<String>('userid2', value);
}
