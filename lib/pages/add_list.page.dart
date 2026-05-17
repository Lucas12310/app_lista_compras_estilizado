import 'package:app_lista_compras_estilizado/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AddList extends StatefulWidget {
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      backgroundColor: appColors!.pageBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centro vertical
          crossAxisAlignment: CrossAxisAlignment.center, // centro horizontal
          children: [
            const Spacer(),
            TextField(
              key: const Key("listNameInput"),
              controller: controller,
              style: TextStyle(color: appColors!.inputTextColor),
              decoration: InputDecoration(
                filled: true,
                fillColor: appColors.inputBackgroundColor,
                hintText: "Nome da lista",
                hintStyle: const TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                // Botão Voltar
                Expanded(
                  child: OutlinedButton(
                    key: Key("backToListsBtn"),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: appColors!.textButtonColor,
                      ), // borda branca
                      foregroundColor:
                          appColors!.textButtonColor, // texto branco
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Voltar"),
                  ),
                ),

                const SizedBox(width: 16), // espaço entre eles
                // Botão Criar
                Expanded(
                  key: Key("createListBtn"),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors!.createButtonBackgroundColor,
                      foregroundColor: appColors.createButtonTextColor,
                      elevation: 0, // tira sombra (opcional)
                    ),
                    onPressed: () {
                      final nome = controller.text.trim();
                      if (nome.isEmpty) return;
                      Navigator.pop(context, nome);
                    },
                    child: const Text("Criar"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24), // margem inferior
          ],
        ),
      ),
    );
  }
}
