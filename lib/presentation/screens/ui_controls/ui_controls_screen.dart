import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Radio selectedRadio = Radio.boat;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        
        
        ExpansionTile(
          title: Text('Vehículo de Transporte'),
          subtitle: Text('$selectedRadio'),
          children: [
            //Estos pueden ir fuera del expansiónTile:
            RadioListTile(
              title: Text('By Car'),
              subtitle: Text('Viajar por carro'),
              value: Radio
                  .car, //Definimos un valor, para a futuro enlazar el valor seleccionado al actual
              groupValue:
                  selectedRadio, //Propiedad para marcar la opción seleccionada
              onChanged: (value) => setState(() {
                selectedRadio = Radio.car;
              }),
            ),
            RadioListTile(
              title: Text('By Plane'),
              subtitle: Text('Viajar por Avión'),
              value: Radio
                  .plane, //Definimos un valor, para a futuro enlazar el valor seleccionado al actual
              groupValue:
                  selectedRadio, //Propiedad para marcar la opción seleccionada
              onChanged: (value) => setState(() {
                selectedRadio = Radio.plane;
              }),
            ),
            RadioListTile(
              title: Text('By Submarine'),
              subtitle: Text('Viajar por submarino'),
              value: Radio
                  .submarine, //Definimos un valor, para a futuro enlazar el valor seleccionado al actual
              groupValue:
                  selectedRadio, //Propiedad para marcar la opción seleccionada
              onChanged: (value) => setState(() {
                selectedRadio = Radio.submarine;
              }),
            ),
            RadioListTile(
              title: Text('By Train'),
              subtitle: Text('Viajar por tren'),
              value: Radio
                  .train, //Definimos un valor, para a futuro enlazar el valor seleccionado al actual
              groupValue:
                  selectedRadio, //Propiedad para marcar la opción seleccionada
              onChanged: (value) => setState(() {
                selectedRadio = Radio.train;
              }),
            ),
            RadioListTile(
              title: Text('By Boat'),
              subtitle: Text('Viajar por bote'),
              value: Radio
                  .boat, //Definimos un valor, para a futuro enlazar el valor seleccionado al actual
              groupValue:
                  selectedRadio, //Propiedad para marcar la opción seleccionada
              onChanged: (value) => setState(() {
                selectedRadio = Radio.boat;
              }),
            ),
          ],
        ),
        
        
        CheckboxListTile(
          title: const Text('¿Quieres desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
              wantsBreakfast = !wantsBreakfast;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('¿Quieres comida?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
              wantsLunch = !wantsLunch;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('¿Quieres cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
              wantsDinner = !wantsDinner;
            },
          ),
        ),
      ],
    );
  }
}

enum Radio { car, plane, submarine, train, boat }
