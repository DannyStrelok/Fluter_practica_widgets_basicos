import 'package:flutter/material.dart';
import 'package:practica_componentes/src/providers/menu_provider.dart';
import 'package:practica_componentes/utils/icono_string_util.dart';

import 'alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

      return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: ( BuildContext context, AsyncSnapshot snapshot) {
          print('future builder');
          print(snapshot.data);
          return ListView(
            children: _listaItems(snapshot.data, context),
          );
        },
      );

  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach((element) {

      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: getIcon(element['icon']),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);

//          final route = MaterialPageRoute(
//            builder: (context) => AlertPage()
//          );
//          Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());

    });

    return opciones;

  }

}
