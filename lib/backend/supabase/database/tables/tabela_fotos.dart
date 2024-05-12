import '../database.dart';

class TabelaFotosTable extends SupabaseTable<TabelaFotosRow> {
  @override
  String get tableName => 'tabela_fotos';

  @override
  TabelaFotosRow createRow(Map<String, dynamic> data) => TabelaFotosRow(data);
}

class TabelaFotosRow extends SupabaseDataRow {
  TabelaFotosRow(super.data);

  @override
  SupabaseTable get table => TabelaFotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fotosarquivo => getField<String>('fotosarquivo');
  set fotosarquivo(String? value) => setField<String>('fotosarquivo', value);

  int? get idpasta => getField<int>('idpasta');
  set idpasta(int? value) => setField<int>('idpasta', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);
}
