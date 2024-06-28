import 'package:flutter/material.dart';
import 'package:flutter_practica_1/pages/home_page.dart';
import 'package:flutter_practica_1/pages/moedas_page.dart';

class meuAplicativo extends StatelessWidget {
  const meuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cripto Moedas",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
