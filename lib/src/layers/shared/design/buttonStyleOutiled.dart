import 'package:app_rpg_demigods/src/layers/widgets/custom_avatar_widget.dart';
import 'package:flutter/material.dart';

import '../../domain/repository/home_repository_imp.dart';
import '../themes/theme.dart';

class ButtonStyleOutlined extends StatelessWidget {
  final String name;
  final String position;
  ButtonStyleOutlined({super.key, required this.name, required this.position});

  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                  color: themeCardButton.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: CustomAvatarWidget(
                image: playersRepositoryImp.urlImageSetting(name),
                name: name,
                position: position,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
