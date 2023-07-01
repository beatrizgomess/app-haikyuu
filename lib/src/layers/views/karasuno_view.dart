import 'package:app_rpg_demigods/src/layers/views/create_view.dart';
import 'package:app_rpg_demigods/src/layers/components/ListUsers-page.dart';
import 'package:app_rpg_demigods/src/layers/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';

class KarasumoView extends StatefulWidget {
  const KarasumoView({super.key});

  @override
  State<KarasumoView> createState() => _KarasumoViewState();
}

class _KarasumoViewState extends State<KarasumoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(50, 50),
        child: AppBarWidget(
          labelAppBar: "Haikyuu App",
          image: ('assets/images/sword.png'),
        ),
      ),
      body: ListUsersPage(),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.app_registration_outlined),
        label: Text(""),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => CreateView()));
        },
        elevation: 10,
      ),
    );
  }
}
