import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/providers/theme_data.dart';
import 'package:rick_and_morty/screens/character_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Rick and Morty',
              style: GoogleFonts.shadowsIntoLight(
                  fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                  color: Colors.black87,
                  blurRadius:5,
                )]),),
        ),
        elevation: 2,
        actions: [
          IconButton(
            onPressed:(){
              Provider.of<ThemeColorData>(context,listen: false).setLightMode();
            },
            icon: Icon(Provider.of<ThemeColorData>(context).isLightMode
                ? Icons.light_mode
                : Icons.mode_night))],
      ),
      body: CharacterPage(),
    );
  }
}