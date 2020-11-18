import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valor = 50.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {

    return (
      Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
       // divisions: 20,
        onChanged: !_bloquearCheck ? (value) {
          setState(() {
            _valor = value;
          });
        } : null,
        min: 0.0,
        max: 500.0,
        value: _valor,
      )
    );

  }

  Widget _crearImagen() {

    return FadeInImage(
      placeholder: AssetImage("assets/jar-loading.gif"),
      image: NetworkImage("https://rtvc-assets-radionica3.s3.amazonaws.com/s3fs-public/styles/image_750x424/public/field/image/article/cthulhu.jpg?itok=KdaKCFGZ"),
      width: _valor,
      fit: BoxFit.contain,
    );

  }

  Widget _crearCheckbox() {

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

//    return Checkbox(
//      value: _bloquearCheck,
//      onChanged: (valor) {
//        setState(() {
//          _bloquearCheck = valor;
//        });
//      },
//    );

  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
