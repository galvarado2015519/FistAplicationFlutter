import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = TextStyle( fontSize: 25 );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 100.5,
        backgroundColor: Color(4290479139),
        iconTheme: IconThemeData(opacity: 100.9),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks', style: estiloTexto),
            Text('0', style: estiloTexto,),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {
          print('Hola Mundo');
        }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}