import '../database.dart';

class CoresTable extends SupabaseTable<CoresRow> {
  @override
  String get tableName => 'cores';

  @override
  CoresRow createRow(Map<String, dynamic> data) => CoresRow(data);
}

class CoresRow extends SupabaseDataRow {
  CoresRow(super.data);

  @override
  SupabaseTable get table => CoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get azul => getField<String>('azul');
  set azul(String? value) => setField<String>('azul', value);

  String? get verde => getField<String>('verde');
  set verde(String? value) => setField<String>('verde', value);

  String? get laranja => getField<String>('laranja');
  set laranja(String? value) => setField<String>('laranja', value);
}
