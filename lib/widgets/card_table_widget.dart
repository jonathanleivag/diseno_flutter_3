import 'dart:ui';

import 'package:flutter/material.dart';

class CardTableWidget extends StatelessWidget {
  const CardTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.car_rental_outlined,
              color: Colors.pinkAccent,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.dock_outlined,
              color: Colors.blueAccent,
              text: 'Document',
            ),
            _SingleCard(
              icon: Icons.verified_user_sharp,
              color: Colors.green,
              text: 'User',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.tv_outlined,
              color: Colors.redAccent,
              text: 'TV',
            ),
            _SingleCard(
              icon: Icons.radio_button_checked_outlined,
              color: Colors.blueGrey,
              text: 'Radio',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.animation_outlined,
              color: Colors.pink,
              text: 'Animal',
            ),
            _SingleCard(
              icon: Icons.report,
              color: Colors.red,
              text: 'Report',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;

  const _SingleCard({
    Key? key,
    required this.color,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BackgroudCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text.toUpperCase(),
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class _BackgroudCard extends StatelessWidget {
  final Widget child;
  final boxDecoration = BoxDecoration(
      color: const Color.fromRGBO(62, 62, 107, 0.7),
      borderRadius: BorderRadius.circular(20));
  _BackgroudCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: child,
          ),
        ),
      ),
    );
  }
}
