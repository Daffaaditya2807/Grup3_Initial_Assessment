import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Text Assalamualaikum Umar & Jam Lokasi
              //
              //
              //...............

              // Halaman Surah
              //
              //
              //..................

              //Container Surah dan text
              const SizedBox(
                height: 20,
              ),
              ContainerSurah(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContainerSurah() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment(0.71, -0.71),
                  end: Alignment(-0.71, 0.71),
                  colors: [Color(0xFFDF98FA), Color(0xFF9055FF)]),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFDF98FA).withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(4, 2), // changes position of shadow
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Al-Fatiah',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'The Opening',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: 200,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.white.withOpacity(0.3499999940395355),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: 21,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'MECCAN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 4,
                      height: 4,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.3499999940395355),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '7 VERSES',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/bismillah.png",
                width: 250,
                height: 150,
              )
            ],
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: Image.asset(
            "assets/Quran.png",
            width: 250,
            height: 150,
          ),
        )
      ],
    );
  }

  Widget ayatQuran(
      int nomorAyat, String ayatQuran, String artiAyat, BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [Colors.grey.shade200, Colors.grey.shade100],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: ShapeDecoration(
                    color: Color(0xFF863ED5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.50),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    nomorAyat.toString(),
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        var snackBar = SnackBar(
                          content: Text('This Fiture Available Soon!'),
                          backgroundColor: const Color(0xFF863ED5),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      icon: const Icon(
                        Icons.share,
                        color: Color(0xFF863ED5),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        var snackBar = SnackBar(
                          content: Text(
                              'This Play Surah Al-Fatiah Ayat ${nomorAyat.toString()}'),
                          backgroundColor: const Color(0xFF863ED5),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      icon: const Icon(
                        Icons.play_arrow_outlined,
                        size: 30,
                        color: Color(0xFF863ED5),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        var snackBar = SnackBar(
                          content: Text(
                              'Add to Bookmark Surah Al-Fatiah Ayat ${nomorAyat.toString()}'),
                          backgroundColor: const Color(0xFF863ED5),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      icon: const Icon(
                        Icons.bookmark_border,
                        color: Color(0xFF863ED5),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            ayatQuran,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF230E4E),
              fontSize: 18,
              fontFamily: 'Amiri',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 327,
          child: Text(
            artiAyat,
            style: const TextStyle(
              color: Color(0xFF230E4E),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider()
      ],
    );
  }
}
