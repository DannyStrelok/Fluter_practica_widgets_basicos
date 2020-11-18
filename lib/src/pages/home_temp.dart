import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String option in options) {
      final tempWidget = ListTile(title: Text(option));
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {

    return options.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e + "!"),
            subtitle: Text('subtitulo'),
            leading: Icon(Icons.map),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

  }

}
