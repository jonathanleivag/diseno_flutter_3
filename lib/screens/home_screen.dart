import 'package:diseno_flutter_3/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundWidget(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigatorWidget(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitleWidget(),
          CardTableWidget(),
        ],
      ),
    );
  }
}
