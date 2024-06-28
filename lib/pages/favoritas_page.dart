import 'package:flutter/material.dart';
import 'package:flutter_practica_1/repositories/favoritas_repository.dart';
import 'package:flutter_practica_1/widgets/moeda_card.dart';
import 'package:provider/provider.dart';

class Favoritas_Page extends StatefulWidget {
  const Favoritas_Page({super.key});

  @override
  State<Favoritas_Page> createState() => _Favoritas_PageState();
}

class _Favoritas_PageState extends State<Favoritas_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moedas Favoritas'),
      ),
      body: Container(
        color: Colors.indigo.withOpacity(0.05),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(12.0),
        child:
            Consumer<FavoritasRepository>(builder: (context, favoritas, child) {
          return favoritas.lista.isEmpty
              ? ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Favoritas vazio'),
                )
              : ListView.builder(
                  itemCount: favoritas.lista.length,
                  itemBuilder: (_, index) {
                    return MoedaCard(moeda: favoritas.lista[index]);
                  });
        }),
      ),
    );
  }
}
