import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment(0.71, -0.71),
                          end: Alignment(-0.71, 0.71),
                          colors: [Color(0xFFDF98FA), Color(0xFF9055FF)])),
                ),
                Image.asset(
                  "assets/Quran.png",
                  width: 250,
                  height: 150,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
