import 'package:app_rpg_demigods/src/layers/components/list_view_teams.dart';
import 'package:app_rpg_demigods/src/layers/shared/design/card_menu.dart';
import 'package:app_rpg_demigods/src/layers/shared/themes/color_teams_scheme.dart';
import 'package:app_rpg_demigods/src/layers/shared/themes/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/carrossel_slider.dart';
import '../shared/constants/const_img_app.dart';
import '../shared/design/buttonStyleOutiled.dart';

class MenuView extends StatelessWidget {
  MenuView({super.key});
  String name = "";
  String position = "levantador";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              child: Image.asset(
                ConstImgApp.marca,
                alignment: Alignment.topRight,
                width: 50,
                height: 50,
                scale: 1,
              ),
              top: 50,
              left: -9,
            ),
            Positioned(
              top: 10,
              left: screenWidth - (450 / 1.2),
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  ConstImgApp.HAIKYUU_LOGO,
                  alignment: Alignment.topRight,
                  width: 400,
                  height: 400,
                  scale: 1,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                    ),
                    Container(
                      width: 300,
                      child: const Text(
                        'Which team are you looking for?',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 20),
                    // CarrosselSlider(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardMenu(
                          name: 'Karasumo',
                          colorText:
                              const TextStyle(fontWeight: FontWeight.w700),
                          color: karasumo.primaryColor,
                          image: ConstImgApp.logo_karasuno,
                        ),
                        CardMenu(
                          name: 'Nekoma',
                          colorText:
                              const TextStyle(fontWeight: FontWeight.w700),
                          color: nekoma.primaryColor,
                          image: ConstImgApp.logo_nekoma,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardMenu(
                          name: 'Aobajosai',
                          colorText: TextStyle(fontWeight: FontWeight.w700),
                          color: Aobajosai.primaryColor,
                          image: ConstImgApp.logo_karasuno,
                        ),
                        CardMenu(
                          name: 'Datekou',
                          colorText: TextStyle(fontWeight: FontWeight.w700),
                          color: datekou.primaryColor,
                          image: ConstImgApp.logo_karasuno,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardMenu(
                          name: 'Fukurodani',
                          colorText: TextStyle(fontWeight: FontWeight.w700),
                          color: fukurodani.primaryColor,
                          image: ConstImgApp.logo_karasuno,
                        ),
                        CardMenu(
                          name: 'Shiratorizawa',
                          colorText: TextStyle(fontWeight: FontWeight.w700),
                          color: shiratorizawa.primaryColor,
                          image: ConstImgApp.logo_karasuno,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardMenu(
                            name: 'Johzenji',
                            color: johzenji.primaryColor,
                            colorText: TextStyle(fontWeight: FontWeight.w700),
                            image: ConstImgApp.logo_karasuno,
                          ),
                          CardMenu(
                            name: 'Wakutani Sul',
                            colorText: TextStyle(fontWeight: FontWeight.w700),
                            color: wakutani_sul.primaryColor,
                            image: ConstImgApp.logo_karasuno,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardMenu(
                            name: 'Ougiminami',
                            colorText: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            color: ougiminami.primaryColor,
                            image: ConstImgApp.logo_karasuno,
                          ),
                          CardMenu(
                            name: 'Inarizaki',
                            colorText: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            color: inarizaki.primaryColor,
                            image: ConstImgApp.logo_karasuno,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardMenu(name: name),
                          CardMenu(name: name),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 200,
                      width: 500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
