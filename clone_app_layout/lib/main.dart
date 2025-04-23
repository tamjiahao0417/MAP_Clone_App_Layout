import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MinecraftMenu());

class MinecraftMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minecraft Menu',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.asset(
              'images/minecraft_background.webp', // Add your image to assets
              fit: BoxFit.cover,
            ),
            // UI Elements
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // Minecraft Title
                Text(
                  'JAVA EDITION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 5, color: Colors.black, offset: Offset(2, 2)),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                // Menu Buttons
                _menuButton('Singleplayer'),
                _menuButton('Multiplayer'),
                _menuButton('Minecraft Realms'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _menuButton('Options', width: 150),
                    const SizedBox(width: 20),
                    _menuButton('Quit Game', width: 150),
                  ],
                ),
              ],
            ),
            // Diagonal Tagline
            Positioned(
              top: 80,
              right: 210,
              child: Transform.rotate(
                angle: -math.pi / 8,
                child: Text(
                  'The sky is the limit!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    shadows: [
                      Shadow(blurRadius: 5, color: Colors.black, offset: Offset(1, 1)),
                    ],
                  ),
                ),
              ),
            ),
            // Version Info
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                'Minecraft 1.21.5 (Modded)',
                style: TextStyle(color: Colors.white, fontSize: 12, shadows: [
                  Shadow(blurRadius: 2, color: Colors.black),
                ]),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                'Copyright Mojang AB. Do not distribute!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  shadows: [
                    Shadow(
                      blurRadius: 2,
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _menuButton(String text, {double width = 300}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.cyanAccent, width: 2),
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
