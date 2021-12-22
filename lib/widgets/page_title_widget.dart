import 'package:flutter/material.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hola mundo',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Text(
                'Nostrud sint et dolor veniam pariatur aute nisi enim et quis. Laboris ex minim sint aliqua.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
