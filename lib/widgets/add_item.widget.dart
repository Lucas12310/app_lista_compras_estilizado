import 'package:app_lista_compras_estilizado/model/Item.dart';
import 'package:app_lista_compras_estilizado/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final nameController = TextEditingController();
  final precoController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void addItem() {
    if (!formKey.currentState!.validate()) return;

    final item = Item(
      nome: nameController.text,
      preco: double.parse(precoController.text),
    );

    Navigator.of(context).pop(item);
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Container(
      color: appColors.modalBackgroundColor,
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          right: 20,
          left: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Adicionar Item",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: appColors.modalTextColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close, color: appColors.closeIconColor),
                  ),
                ],
              ),

              Divider(thickness: 3, height: 0, color: appColors.dividerColor),

              const SizedBox(height: 15),

              TextFormField(
                key: const Key("inputNameItem"),
                controller: nameController,
                style: TextStyle(color: appColors.modalTextColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Nome do item",
                  hintStyle: TextStyle(color: appColors.modalHintColor),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                  return null;
                },
              ),

              TextFormField(
                key: const Key("intputPriceItem"),
                controller: precoController,
                style: TextStyle(color: appColors.modalTextColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "R\$ 0,00",
                  hintStyle: TextStyle(color: appColors.modalHintColor),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo Obrigatório";
                  }
                  return null;
                },
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  key: const Key("btnAddItem"),
                  onPressed: addItem,
                  child: const Text(
                    "Adicionar",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
