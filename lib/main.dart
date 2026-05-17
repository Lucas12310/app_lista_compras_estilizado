import 'package:app_lista_compras_estilizado/pages/compras_list.page.dart';
import 'package:app_lista_compras_estilizado/stores/theme.store.dart';
import 'package:app_lista_compras_estilizado/themes/themes.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';

void main() {
  GetIt.I.registerSingleton<ThemeStore>(ThemeStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GetIt.I.get<ThemeStore>().themeMode,
      builder: (_, themeMode, __) {
        return MaterialApp(
          title: 'App Lista de Compras Estilizado',
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          themeMode: themeMode,
          darkTheme: darkTheme(),
          home: CompraListPage(),
        );
      },
    );
  }
}
