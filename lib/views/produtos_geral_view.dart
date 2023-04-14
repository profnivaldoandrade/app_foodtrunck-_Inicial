import 'package:app_foodtrunck/components/item_poduto.dart';
import 'package:app_foodtrunck/data/produtosFicticio.dart';
import 'package:app_foodtrunck/models/produto.dart';
import 'package:flutter/material.dart';

class ProdutosGeralView extends StatelessWidget {
  final List<Produto> carregarProdutos = ProdutoFicticio;
  ProdutosGeralView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Food Trunck'),
      ),
      body: GridView.builder(
        itemCount: carregarProdutos.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 3/2,
        ),
        itemBuilder: (ctx, i)=>(ItemProduto(produto: carregarProdutos[i])),
      ),
    );
  }
}
