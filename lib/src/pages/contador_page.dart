import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = TextStyle( fontSize: 25 );
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull'),
        centerTitle: true,
        elevation: 100.5,
        backgroundColor: Color(4290479139),
        iconTheme: IconThemeData(opacity: 100.9),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto,),
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox( width: 30.0),
        FloatingActionButton( onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _sustraer, child: Icon(Icons.remove)),
        SizedBox( width: 5.0),
        FloatingActionButton( onPressed: _agregar, child: Icon(Icons.add))
        
    ],);     
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}