import 'package:bank/components/box_card.dart';
import 'package:bank/components/color_dot.dart';
import 'package:bank/components/content_division.dart';
import 'package:flutter/material.dart';

class Points extends StatelessWidget {
  const Points({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: const BoxCard(
        boxContent: _Points(),
      ),
    );
  }
}

class _Points extends StatelessWidget {
  const _Points({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pontos da Conta'),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
        ),
        ContentDivision(),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text('Objetivos:', style: Theme.of(context).textTheme.bodyLarge,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: Colors.red),
            ),
            Text('Entrega gratis: 15000pts'),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: Colors.blue),
            ),
            Text('1 mes de streaming: 300000pts'),
          ],
        ),
      ],
    );
  }
}
