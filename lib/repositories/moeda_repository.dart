import 'package:flutter_practica_1/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: "images/bitcoin.png",
        nome: 'Bitcoin',
        sigla: "BTC",
        preco: 346881.8),
    Moeda(
        icone: "images/cardano.png", nome: 'Cardano', sigla: "CRD", preco: 2.0),
    Moeda(
        icone: "images/ethereum.png",
        nome: 'Ethereum',
        sigla: "ETH",
        preco: 18957.6),
    Moeda(
        icone: "images/litecoin.png",
        nome: 'Litecoin',
        sigla: "LTC",
        preco: 396.7),
    Moeda(
        icone: "images/usdcoin.png",
        nome: 'Usdcoin',
        sigla: "USDC",
        preco: 5.44),
    Moeda(icone: "images/xrp.png", nome: 'Xrp', sigla: "XRP", preco: 2.6)
  ];
}
