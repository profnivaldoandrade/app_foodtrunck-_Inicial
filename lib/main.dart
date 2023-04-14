import 'package:app_foodtrunck/utils/app_routes.dart';
import 'package:app_foodtrunck/views/produto_detalhes_view.dart';
import 'package:app_foodtrunck/views/produtos_geral_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      final ThemeData telaPrincipal = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: telaPrincipal.copyWith(
        colorScheme: telaPrincipal.colorScheme.copyWith(
          primary: const Color.fromARGB(255, 233, 86, 5),
          secondary: const Color.fromARGB(255, 143, 24, 0)
        )
      ),
      home: ProdutosGeralView(),
      routes: {
        AppRoutes.PRODUTO_DETALHES: (ctx)=> ProdutoDetalhesView(),
      },
    );
  }
}

