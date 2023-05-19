import 'package:cardapio/app/app.dart';
import 'package:cardapio/domain/lanche.dart';
import 'package:flutter/material.dart';

class LanchePage extends StatelessWidget {
  final Lanche lanche;

  const LanchePage({
    super.key,
    required this.lanche,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(lanche.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Image.network(lanche.foto),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    lanche.nome,
                    style: theme.textTheme.headline5,
                  ),
                  Text(
                    moeda.format(lanche.preco),
                    style: theme.textTheme.headline6,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4),
              child: Column(
                children: lanche.ingrediente
                .map((e) => Text(e)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
