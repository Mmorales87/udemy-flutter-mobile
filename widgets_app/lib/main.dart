import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final isDarkMode = ref.watch(isDarkModeProvider);
    // final selectedColor = ref.watch(selectedIndexColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),

      // * En lugar de usar el routes, usaremos el de arriba, goRouter para navegar. Es mejor
      // * para la navegación de la app ya que si no esta autenticado no te deja avanzar etc ...
      // routes: {
      //   '/buttons': (context) =>  const ButtonsScreens(),
      //   '/cards': (context) =>  const CardsScreen(),
      //   '/home': (context) =>  const HomeScreen(),
      // },
    );
  }
}
