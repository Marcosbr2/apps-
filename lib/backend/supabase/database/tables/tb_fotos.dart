import '../database.dart';

class TbFotosTable extends SupabaseTable<TbFotosRow> {
  @override
  String get tableName => 'tb-fotos';

  @override
  TbFotosRow createRow(Map<String, dynamic> data) => TbFotosRow(data);
}

class TbFotosRow extends SupabaseDataRow {
  TbFotosRow(super.data);

  @override
  SupabaseTable get table => TbFotosTable();

  String get iduser => getField<String>('iduser')!;
  set iduser(String value) => setField<String>('iduser', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fotos => getField<String>('fotos');
  set fotos(String? value) => setField<String>('fotos', value);
}
