import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/Screens/details.dart';
import 'package:pokedex_app/Models/pokeModel.dart';


class   PokeItem extends StatelessWidget {
  final PokeModel pokemonsData;

  PokeItem({required this.pokemonsData});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (ctx) => PokeDetails(
                  pokemonsData: pokemonsData,
                )),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width * 0.1,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: pokemonsData.color,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Image.asset(pokemonsData.assetname),
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: ItemClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    pokemonsData.name,
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: LikeButton(),
            ),
          ],
        ),
      ),
    );
  }
}







class ItemClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(5, -5, size.width * 0.2, size.height * 0.05);
    path.lineTo(size.width * 0.9, size.height * 0.4);
    path.quadraticBezierTo(
        size.width, size.height * 0.45, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}