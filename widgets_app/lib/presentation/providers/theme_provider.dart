import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// * Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano para saber si el modo oscuro está activado
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un índice para saber qué color está seleccionado
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);