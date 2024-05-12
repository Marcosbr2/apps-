import '../database.dart';

class ImagemTable extends SupabaseTable<ImagemRow> {
  @override
  String get tableName => 'imagem';

  @override
  ImagemRow createRow(Map<String, dynamic> data) => ImagemRow(data);
}

class ImagemRow extends SupabaseDataRow {
  ImagemRow(super.data);

  @override
  SupabaseTable get table => ImagemTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fotos => getField<String>('fotos');
  set fotos(String? value) => setField<String>('fotos', value);
}
