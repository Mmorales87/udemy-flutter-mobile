import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola, soy un SnackBar'),
        action: SnackBarAction(
          label: 'Cerrar',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      // * Con el barrierDismissible en false obligamos a que la persona tenga que pulsar uno de los botones
      // * es decir, no podrá pulsar fuera del dialog, ya que no se cerrará!
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text(
            'Esse proident mollit aliquip eiusmod est cillum cupidatat voluptate anim aute ipsum. Ex tempor consequat culpa culpa culpa ea incididunt sunt dolor. Ut amet ut cupidatat et ullamco culpa est sunt. Nostrud et ut commodo ut veniam quis cillum commodo. Lorem exercitation magna cillum ex esse commodo ea eu eiusmod. Deserunt cillum sit labore exercitation.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text('Todas las licencias que usamos en esta app')
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
