import 'package:app_rpg_demigods/src/layers/shared/themes/theme.dart';
import 'package:app_rpg_demigods/src/layers/widgets/custom_button_inside_of_card.dart';
import 'package:flutter/material.dart';

class CustomContentsTextContainer extends StatelessWidget {
  final String name;
  final String position;
  const CustomContentsTextContainer(
      {super.key, required this.name, required this.position});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: textDecoration.highlightColor,
                height: 40,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          //Name
                          name,
                          style: textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                style: const ButtonStyle(),
                onPressed: null,
                child: Text(
                  position,
                  style: TextStyle(color: textDecoration.primaryColor),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 5, right: 10),
                      child: CustomButtonInsideOfCardWidget(
                        text: "Details",
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
