import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get idade => getField<String>('idade');
  set idade(String? value) => setField<String>('idade', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  double? get codigo => getField<double>('codigo');
  set codigo(double? value) => setField<double>('codigo', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get video => getField<String>('video');
  set video(String? value) => setField<String>('video', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
