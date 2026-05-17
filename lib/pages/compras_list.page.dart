import 'package:app_lista_compras_estilizado/model/ListaCompra.dart';
import 'package:app_lista_compras_estilizado/pages/add_list.page.dart';
import 'package:app_lista_compras_estilizado/pages/config.page.dart';
import 'package:app_lista_compras_estilizado/widgets/listaDeCompras.widget.dart';
import 'package:app_lista_compras_estilizado/widgets/telaVazia.widget.dart';
import 'package:flutter/material.dart';

class CompraListPage extends StatefulWidget {
  const CompraListPage({super.key});

  @override
  State<CompraListPage> createState() => _CompraListPageState();
}

class _CompraListPageState extends State<CompraListPage> {
  List<ListaCompra> listas = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: Key("appBarTitle"),
        title: const Text(
          "Minhas Listas",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Center(child: Icon(Icons.diamond, size: 32, color: Colors.yellow)),
          SizedBox(width: 12),
          Center(
            child: IconButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (_) => ConfigPage()));
              },
              icon: Icon(Icons.settings, size: 32, color: Colors.white),
            ),
          ),
          SizedBox(width: 12),
        ],
      ),
      body: listas.isEmpty ? telaVazia() : listaDeCompras(listas: listas),

      floatingActionButton: FloatingActionButton(
        key: Key("addListBtn"),
        onPressed: () async {
          final listName = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddList()),
          );

          if (listName != null) {
            setState(() {
              listas.add(ListaCompra(nome: listName, itens: []));
            });
          }
        },

        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
