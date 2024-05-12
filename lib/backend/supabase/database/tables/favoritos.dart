import '../database.dart';

class FavoritosTable extends SupabaseTable<FavoritosRow> {
  @override
  String get tableName => 'favoritos';

  @override
  FavoritosRow createRow(Map<String, dynamic> data) => FavoritosRow(data);
}

class FavoritosRow extends SupabaseDataRow {
  FavoritosRow(super.data);

  @override
  SupabaseTable get table => FavoritosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get curtidas => getField<int>('curtidas');
  set curtidas(int? value) => setField<int>('curtidas', value);

  String? get favoritoID => getField<String>('favoritoID');
  set favoritoID(String? value) => setField<String>('favoritoID', value);
}
