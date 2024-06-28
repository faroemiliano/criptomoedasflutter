import 'package:flutter/material.dart';
import 'package:flutter_practica_1/configs/app_settings.dart';
import 'package:flutter_practica_1/meuaplicativo.dart';
import 'package:flutter_practica_1/repositories/conta_repository.dart';
import 'package:flutter_practica_1/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContaRepository()),
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: meuAplicativo(),
    ),
  );
}
