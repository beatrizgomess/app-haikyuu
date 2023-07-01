// import 'package:app_rpg_demigods/src/modules/shared/models/characterModel.dart';
// import 'package:app_rpg_demigods/src/modules/shared/themes/theme.dart';
// import 'package:app_rpg_demigods/src/modules/widgets/custom_elevated_button_widget.dart';
// import 'package:app_rpg_demigods/src/modules/widgets/custom_text_field_widget.dart';
// import 'package:app_rpg_demigods/src/modules/widgets/appBarWidget.dart';
// import 'package:flutter/material.dart';

// class CreateView extends StatefulWidget {
//   const CreateView({super.key});

//   @override
//   State<CreateView> createState() => _CreateViewState();
// }

// class _CreateViewState extends State<CreateView> {
//   GlobalKey formKey = GlobalKey<FormState>();
//   var character = Character();

//   var passwordCache = "";
//   var confirmeCache = "";
//   bool obscureTextPassword = false;
//   bool checkSex = false;
//   int _value = 1;

//   @override
//   void initState() {
//     super.initState();
//     controller.addListener(() {
//       print(controller.text);
//     });
//   }

//   final controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PreferredSize(
//           preferredSize: Size(50, 50),
//           child: AppBarWidget(
//             labelAppBar: "REGISTER",
//             image: "assets/images/sword.png",
//           )),
//       body: Form(
//         key: formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               verticalDirection: VerticalDirection.down,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 30,
//                   child: Image(
//                     fit: BoxFit.scaleDown,
//                     height: 60,
//                     width: 65,
//                     image: AssetImage('assets/images/sword.png'),
//                   ),
//                 ),
//                 const Text(
//                   "Character",
//                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: const [],
//                       ),
//                       const Text("    Create Your Character",
//                           style: TextStyle(
//                               fontSize: 15, fontWeight: FontWeight.w400)),
//                       const SizedBox(height: 20),
//                       CustomTextFieldWidget(
//                         label: character.qtdButtons[0],
//                         hintText: "Your Name",
//                         icon: const Image(
//                           image: AssetImage("assets/images/new.png"),
//                         ),
//                         onSaved: (value) =>
//                             character = character.copyWith(name: value),
//                         validator: (value) => value == null || value.isEmpty
//                             ? "Campo Obrigatório"
//                             : null,
//                       ),

//                       const SizedBox(height: 15),
//                       CustomTextFieldWidget(
//                           label: character.qtdButtons[1],
//                           hintText: "Your affiliation",
//                           icon: const Image(
//                             image: AssetImage("assets/images/olimpo.png"),
//                           ),
//                           onSaved: (value) =>
//                               character = character.copyWith(offspring: value),
//                           validator: (value) => value == null || value.isEmpty
//                               ? "Campo Obrigatório"
//                               : null),

//                       const SizedBox(height: 15),
//                       CustomTextFieldWidget(
//                         label: character.qtdButtons[2],
//                         hintText: "Your Power",
//                         icon: const Image(
//                           image: AssetImage("assets/images/raio.png"),
//                         ),
//                         onSaved: (value) =>
//                             character = character.copyWith(power: value),
//                         validator: (value) => value == null || value.isEmpty
//                             ? "Campo Obrigatório"
//                             : null,
//                       ),
//                       const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Radio(
//                             value: 1,
//                             groupValue: _value,
//                             onChanged: (value) {
//                               setState(() {
//                                 _value = value!;
//                               });
//                             },
//                           ),
//                           const SizedBox(height: 15),
//                           const Text("Feminino"),
//                           Radio(
//                             value: 2,
//                             groupValue: _value,
//                             onChanged: (value) {
//                               setState(() {
//                                 _value = value!;
//                               });
//                             },
//                           ),
//                           const SizedBox(height: 15),
//                           const Text("Masculino"),

//                           Radio(
//                             value: 3,
//                             groupValue: _value,
//                             onChanged: (value) {
//                               setState(() {
//                                 _value = value!;
//                               });
//                             },
//                           ),
//                           const SizedBox(height: 15),
//                           const Text("Outros"),

//                           // Radio(
//                           //   value: 1,
//                           //   groupValue: 1,
//                           //   onChanged: (value) {},
//                           // ),
//                           // const SizedBox(height:15),
//                           // const Text("transgênero"),
//                         ],
//                       ),

//                       // CheckboxListTile(
//                       //   value: checkSex,
//                       //   title: Text("MASCULINO"),
//                       //   onChanged: (value) {
//                       //   setState(() {
//                       //     checkSex = value!;
//                       //   });
//                       // },
//                       //   ),
//                       const SizedBox(height: 15),
//                       CustomTextFieldWidget(
//                           label: character.qtdButtons[4],
//                           hintText: "Your Cottage int the camp",
//                           icon: const Image(
//                             image:
//                                 AssetImage("assets/images/casa-de-madeira.png"),
//                           ),
//                           onSaved: (value) =>
//                               character = character.copyWith(cottage: value),
//                           validator: (value) => value == null || value.isEmpty
//                               ? "Campo Obrigatório"
//                               : null),

//                       const SizedBox(height: 15),
//                       CustomTextFieldWidget(
//                           label: character.qtdButtons[5],
//                           hintText: "Your Weapons",
//                           icon: const Image(
//                             image: AssetImage("assets/images/sword2.png"),
//                           ),
//                           onSaved: (value) =>
//                               character = character.copyWith(weapons: value),
//                           validator: (value) => value == null || value.isEmpty
//                               ? "Campo Obrigatório"
//                               : null),

//                       const SizedBox(height: 15),
//                       const SizedBox(height: 15),

//                       Builder(builder: (context) {
//                         return CustomElevatedButtonWidget(
//                             label: "Save",
//                             color: lightTheme.primaryColor,
//                             icon: Icons.save,
//                             action: () {
//                               if (Form.of(context).validate() == true) {
//                                 Form.of(context).save();
//                                 //  print('''FORM
//                                 //   NAME: ${character.name}
//                                 //   OFFSPRING: ${character.offspring}
//                                 //   POWER: ${character.power}
//                                 //   SEX: ${character.sex}
//                                 //   COTTAGE:${character.cottage}
//                                 //   WEAPONS:${character.weapons}

//                                 // ''');
//                               }
//                               ;
//                             });
//                       }),
//                       const SizedBox(height: 15),
//                       CustomElevatedButtonWidget(
//                         label: "Reset",
//                         color: Colors.grey.shade600,
//                         icon: Icons.restore,
//                         action: () {},
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
