import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cores = prefs
              .getStringList('ff_cores')
              ?.map((x) => Color(int.tryParse(x) ?? 0))
              .toList() ??
          _cores;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<Color> _cores = [
    const Color(0xff08b758),
    const Color(0xff1b325f),
    const Color(0xffff275e)
  ];
  List<Color> get cores => _cores;
  set cores(List<Color> value) {
    _cores = value;
    prefs.setStringList(
        'ff_cores', value.map((x) => x.value.toString()).toList());
  }

  void addToCores(Color value) {
    _cores.add(value);
    prefs.setStringList(
        'ff_cores', _cores.map((x) => x.value.toString()).toList());
  }

  void removeFromCores(Color value) {
    _cores.remove(value);
    prefs.setStringList(
        'ff_cores', _cores.map((x) => x.value.toString()).toList());
  }

  void removeAtIndexFromCores(int index) {
    _cores.removeAt(index);
    prefs.setStringList(
        'ff_cores', _cores.map((x) => x.value.toString()).toList());
  }

  void updateCoresAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    _cores[index] = updateFn(_cores[index]);
    prefs.setStringList(
        'ff_cores', _cores.map((x) => x.value.toString()).toList());
  }

  void insertAtIndexInCores(int index, Color value) {
    _cores.insert(index, value);
    prefs.setStringList(
        'ff_cores', _cores.map((x) => x.value.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
