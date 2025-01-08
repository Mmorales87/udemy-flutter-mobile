import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// * Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// * Un simple booleano para saber si el modo oscuro está activado
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// * Un índice para saber qué color está seleccionado
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

// * Un objeto de tipo AppTheme que se encarga de devolver el tema actual
// * Se usa cuando el objeto es un poco mas elaborado
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// * Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // * Esto es decirle  que necesita un AppTheme para inicializar, basicamente crea una instancia de AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
