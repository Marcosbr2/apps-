import '../database.dart';

class CuponsTable extends SupabaseTable<CuponsRow> {
  @override
  String get tableName => 'cupons';

  @override
  CuponsRow createRow(Map<String, dynamic> data) => CuponsRow(data);
}

class CuponsRow extends SupabaseDataRow {
  CuponsRow(super.data);

  @override
  SupabaseTable get table => CuponsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  int? get desconto => getField<int>('desconto');
  set desconto(int? value) => setField<int>('desconto', value);

  String? get refId => getField<String>('ref_id');
  set refId(String? value) => setField<String>('ref_id', value);
}
