import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/Widgets/tabbar.dart';
import 'package:pokedex_app/Models/pokeModel.dart';
import 'package:pokedex_app/Widgets/pokeItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SizedBox(width: 24),
                SvgPicture.asset(
                  "assets/menu.svg",
                  width: 35,
                  height: 35,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "   PokeDex",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Tabs(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(24),
                width: double.infinity,
                color: Colors.grey.withOpacity(0.3),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Pokemons",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "More",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    PokeItem(
                                      pokemonsData: pokeList[0],
                                    ),
                                    PokeItem(
                                      pokemonsData: pokeList[2],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    PokeItem(
                                      pokemonsData: pokeList[1],
                                    ),
                                    PokeItem(
                                      pokemonsData: pokeList[3],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Itens",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "More",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    PokeItem(
                                      pokemonsData: itemList[0],
                                    ),
                                    PokeItem(
                                      pokemonsData: itemList[2],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    PokeItem(
                                      pokemonsData: itemList[1],
                                    ),
                                    PokeItem(
                                      pokemonsData: itemList[3],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}