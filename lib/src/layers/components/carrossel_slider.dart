import 'package:app_rpg_demigods/src/layers/shared/themes/color_teams_scheme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarrosselSlider extends StatelessWidget {
  CarrosselSlider({super.key});

  final _listSlide = [
    'assets/slider/kageyama.jpg',
    'assets/slider/nishinoya.jpg',
    'assets/slider/tsu.jpg',
    'assets/slider/suga.jpg',
    'assets/slider/esqueci.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: screenWidth,
        child: CarouselSlider(
          options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              autoPlayCurve: Curves.bounceOut),
          items: _listSlide.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Image.asset(
                  '$i',
                  width: 500,
                  height: 250,
                  scale: 1,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
