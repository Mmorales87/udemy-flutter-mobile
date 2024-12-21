 import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),





      // ? En lugar de usar el routes, usaremos el de arriba, goRouter para navegar. Es mejor
       // ? para la navegación de la app ya que si no esta autenticado no te deja avanzar etc ...
      // routes: {
      //   '/buttons': (context) =>  const ButtonsScreens(),
      //   '/cards': (context) =>  const CardsScreen(),
      //   '/home': (context) =>  const HomeScreen(),
      // },
    );
  }
}
