import '../database.dart';

class UseripTable extends SupabaseTable<UseripRow> {
  @override
  String get tableName => 'userip';

  @override
  UseripRow createRow(Map<String, dynamic> data) => UseripRow(data);
}

class UseripRow extends SupabaseDataRow {
  UseripRow(super.data);

  @override
  SupabaseTable get table => UseripTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);
}
