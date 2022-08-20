// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Transferências'),
     ),
     body: Column(
       children:  [
         ItemTransferencia(Transferencia(100.0, 1000)),
         ItemTransferencia(Transferencia(200.0, 2000)),
         ItemTransferencia(Transferencia(300.0, 3000)),
       ],

     ),
     floatingActionButton: FloatingActionButton(
     onPressed: () {},
     child: Icon(Icons.add),
   ),
   );
  }
}

class ItemTransferencia extends StatelessWidget{

  final Transferencia _transferencia;


  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
   return Card(
       child: ListTile(
         leading: Icon(Icons.monetization_on),
         title: Text(_transferencia.valor.toString()),
         subtitle: Text(_transferencia.numeroConta.toString()),
       )
   );
  }
}

class Transferencia{
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

}


class FormularioTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferência')),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0
              ),
              decoration: InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000',
              ),
                keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '0.00',
              ),
                keyboardType: TextInputType.number,
            ),
          ),

          ElevatedButton(
            child: Text('Confirmar'),
            onPressed: () {},
          ),
        ],
      ),
    );

  }


}
