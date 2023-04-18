import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/foto1.jpg')),
        const Tittle(),
        const ButtonSeccion(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: const Text('Hablar de Dark Souls es hablar del juego más influyente de la última década. Popularmente se cita su elevada dificultad como factor determinante en su camino al éxito, de ahí que hoy en día se asocie cualquier juego (o cosa) desafiante con Dark Souls. Pero que fuese un juego complicado (por encima de la media) no fue lo único que elevó la obra de FromSoftware al Olimpo de los videojuegos. Y tampoco fue la clave.')),
      ],
    ));
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Dark Souls',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Es un buen juego pero nadie entiende la historia',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('4.7'),
        ],
      ),
    );
  }
}

class ButtonSeccion extends StatelessWidget {
  const ButtonSeccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(icon: Icons.video_collection, text: 'Video',),
            CustomButton(icon: Icons.copy, text: 'Copy',),
            CustomButton(icon: Icons.share, text: 'Share',),
            ]),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon,
    required this.text,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue,),
        Text(text,style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
