import 'package:flutter/material.dart';

class PokeModel {
  final String name;
  final String assetname;
  final String type;
  final Color color;

  PokeModel(
      {required this.name, required this.assetname, required this.type, required this.color});
}

List<PokeModel> pokeList = [
  PokeModel(
    name: "Bulbasauro",
    assetname: "assets/bulbasaur.png",
    type: "Grama / Veneno",
    color: Color(0xff8BCCB4),
  ),
  PokeModel(
    name: "Ivysauro",
    assetname: "assets/ivysaur.png",
    type: "Grama / Veneno",
    color: Color(0xff79C3C2),
  ),
  PokeModel(
    name: "Venusaur",
    assetname: "assets/venusaur.png",
    type: "Grama / Veneno",
    color: Color(0xff5FAFAC),
  ),
  PokeModel(
    name: "Charmander",
    assetname: "assets/charmander.png",
    type: "Fogo",
    color: Color(0xffF6B285),
  ),
];

List<PokeModel> itemList = [
  PokeModel(
    name: "Poção",
    assetname: "assets/potion.png",
    type: "Medicina",
    color: Color(0xffB2BEB5),
  ),
  PokeModel(
    name: "Doce Raro",
    assetname: "assets/rare-candy.png",
    type: "Level up!",
    color: Color(0xffB2BEB5),
  ),
  PokeModel(
    name: "Mater Ball",
    assetname: "assets/masterball.png",
    type: "Bola",
    color: Color(0xffB2BEB5),
  ),
  PokeModel(
    name: "PokéBall",
    assetname: "assets/pokeball.png",
    type: "Bola",
    color: Color(0xffB2BEB5),
  ),
];




































/*List<String> pokemons = [
  "assets/bulbasaur.png",
  "assets/ivysaur.png",
  "assets/venusaur.png",
  "assets/charmander.png",
  "assets/rare-candy.png",
  "assets/potion.png",
  "assets/revive.png",
  "assets/masterball.png",
];*/