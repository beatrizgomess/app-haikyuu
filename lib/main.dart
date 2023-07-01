import 'package:app_rpg_demigods/src/layers/domain/entities/player.dart';
import 'package:app_rpg_demigods/src/layers/shared/constants/api_setting.dart';
import 'package:app_rpg_demigods/src/layers/shared/themes/theme.dart';
import 'package:app_rpg_demigods/src/layers/views/karasuno_view.dart';
import 'package:app_rpg_demigods/src/layers/views/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'src/layers/views/detail_player_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: ApiSettings.url,
    anonKey: ApiSettings.anonKey,
  );
  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/': (context) => MenuView(),
        // '/create': (context) => CreateView(),
        '/karasumo': (context) => KarasumoView(),
        '/playerDetail': (context) => DetailView()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
