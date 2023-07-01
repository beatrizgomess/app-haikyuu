import 'package:app_rpg_demigods/src/layers/domain/entities/player.dart';
import 'package:app_rpg_demigods/src/layers/shared/themes/theme.dart';
import 'package:flutter/material.dart';

import '../views/detail_player_view.dart';

class CustomButtonInsideOfCardWidget extends StatelessWidget {
  CustomButtonInsideOfCardWidget({super.key, this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 30,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: themeElevatedButtonMaterial.backgroundColor),
          onPressed: () => {Navigator.of(context).pushNamed('/playerDetail')},
          child: Text(text!)),
    );
  }
}
