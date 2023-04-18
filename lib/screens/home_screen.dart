import 'package:diseno1/widgets/background.dart';
import 'package:diseno1/widgets/card_table.dart';
import 'package:diseno1/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [const BackgroundWidget(), _HomeBody()],
      ),
      bottomNavigationBar: const Custombutton(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Pagetittle(),
          CardTable(),
        ],
      ),
    );
  }
}
