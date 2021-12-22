import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color(0xff2e305f),
        Color(0xff202333),
      ],
    ),
  );

  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration),
        _PinkBox(),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(80),
    gradient: const LinearGradient(
      colors: [
        Color.fromRGBO(236, 98, 188, 1),
        Color.fromRGBO(241, 142, 172, 1),
      ],
    ),
  );

  _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -30,
      top: -100,
      child: Transform.rotate(
        angle: -pi / 5,
        child: Container(
          height: 360,
          width: 360,
          decoration: boxDecoration,
        ),
      ),
    );
  }
}
