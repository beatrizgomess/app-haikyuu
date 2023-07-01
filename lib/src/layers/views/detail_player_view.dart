import 'package:app_rpg_demigods/src/layers/shared/design/buttonStyleOutiled.dart';
import 'package:app_rpg_demigods/src/layers/shared/themes/theme.dart';
import 'package:flutter/material.dart';

import '../domain/entities/player.dart';
import '../domain/repository/home_repository_imp.dart';

class DetailView extends StatefulWidget {
  DetailView({super.key});
  late Player player;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Haikyuu App"),
        backgroundColor: lightTheme.primaryColor,
      ),
      backgroundColor: lightTheme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Kageyama Tobio",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 2),
              child: Text(
                "Be a pillar lifter for the team",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 2),
              child: Text(
                "Being able to think and play the ball so that it doesn't get blocked.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: screenWidth,
                  color: lightTheme.primaryColor,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: screenHeight / 1.1,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: const Text(
                              "16 years",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: const Text(
                              "Lifter",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: const Text(
                              "66.3kg",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: const Text(
                              "1.85",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Image.asset(
                              height: 50,
                              width: 60,
                              'assets/images/caixa-de-leite.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Image.asset(
                              height: 50,
                              width: 60,
                              'assets/images/iogurte.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 120),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: const Text(
                              textAlign: TextAlign.left,
                              "Moody, arrogant and impatient",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: const Text(
                              textAlign: TextAlign.left,
                              " - The King of the Court",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.network(
                      width: 300,
                      height: screenHeight + 0.8,
                      playersRepositoryImp.urlImageSetting("kageyama"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
