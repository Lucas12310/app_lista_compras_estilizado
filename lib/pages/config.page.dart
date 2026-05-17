import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:app_lista_compras_estilizado/stores/theme.store.dart';

class ConfigPage extends StatelessWidget {
  final _store = GetIt.I.get<ThemeStore>();
  ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Preferencias do usuário",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Aparência: "),
            SizedBox(
              width: 150,
              child: DropdownButton(
                value: _store.themeMode.value,
                isExpanded: true,
                underline: SizedBox(),
                items: [
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text("Claro"),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text("Escuro"),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text("Sistema"),
                  ),
                ],
                onChanged: (value) => _store.setThemeMode(value!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
