import '../database.dart';

class CodigoTable extends SupabaseTable<CodigoRow> {
  @override
  String get tableName => 'codigo';

  @override
  CodigoRow createRow(Map<String, dynamic> data) => CodigoRow(data);
}

class CodigoRow extends SupabaseDataRow {
  CodigoRow(super.data);

  @override
  SupabaseTable get table => CodigoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  String? get arquivo => getField<String>('arquivo');
  set arquivo(String? value) => setField<String>('arquivo', value);

  String? get meuuserid => getField<String>('meuuserid');
  set meuuserid(String? value) => setField<String>('meuuserid', value);

  String? get tempo => getField<String>('tempo');
  set tempo(String? value) => setField<String>('tempo', value);
}
