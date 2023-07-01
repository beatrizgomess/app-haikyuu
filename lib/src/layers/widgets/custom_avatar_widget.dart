import 'package:app_rpg_demigods/main.dart';
import 'package:app_rpg_demigods/src/layers/widgets/custom_text_container.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomAvatarWidget extends StatelessWidget {
  final String name;
  final String position;
  // final String school;
  final String image;

  const CustomAvatarWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.position});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              image,
              width: 100,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          CustomContentsTextContainer(name: name, position: position)
        ],
      ),
    );
  }
}
