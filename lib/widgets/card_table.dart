// ignore_for_file: unnecessary_this

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.pie_chart, text: "General"),
          _SingleCard(color: Colors.red, icon: Icons.place, text: "Lugar"),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purple,
              icon: Icons.business_center,
              text: "Trabajo"),
          _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.access_alarms_rounded,
              text: "Alarma"),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.green, icon: Icons.account_circle, text: "Usuario"),
          _SingleCard(
              color: Colors.indigo, icon: Icons.play_arrow, text: "Media"),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.cyan, icon: Icons.video_call, text: "Grabacion"),
          _SingleCard(color: Colors.yellow, icon: Icons.call, text: "Llamadas"),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          radius: 30,
          child: Icon(
            this.icon,
            size: 35,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    );

    return _Background(
      child: column,
    );
  }
}

class _Background extends StatelessWidget {
  final Widget child;

  const _Background({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
