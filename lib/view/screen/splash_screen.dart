import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "assets/background/splash_background_7.jpg",
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.srcIn,
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 100,
                        offset: Offset(0.5, 0.5),
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 5),
                  ], shape: BoxShape.circle),
                  margin: EdgeInsets.fromLTRB(48, 24, 48, 10),
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: FlareActor("assets/anims/PokemonSplash.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.fitHeight,
                        animation: "intro"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: Image.asset(
                    "assets/images/pokemon_logo_eng.png",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
