import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLaunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          onChanged: (value) => setState(
            () {
              isDeveloper = !isDeveloper;
            },
          ),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar con coche'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar con barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.boat;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar con avion'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar con submarinoﬂ'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transportation.submarine;
                },
              ),
            ),
          ],
        ),

        // TODO:
        CheckboxListTile(
          title: const Text('¿Incluir desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(
            () {
              wantsBreakfast = !wantsBreakfast;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('¿Incluir comida?'),
          value: wantsLaunch,
          onChanged: (value) => setState(
            () {
              wantsLaunch = !wantsLaunch;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('¿Incluir cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(
            () {
              wantsDinner = !wantsDinner;
            },
          ),
        ),
      ],
    );
  }
}
