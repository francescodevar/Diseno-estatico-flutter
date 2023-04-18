import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5], 
            colors: [
              Color(0xff232248),
              Color(0xff262F4C),
            ])
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
            ],
            ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:const  [
        Background(),
        Maincontent(),
      ],
    );
  }
}

class Maincontent extends StatelessWidget {
  const Maincontent({super.key});


  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(height: 30,),
          Text("16º", style: textStyle,),
          Text("Lunes", style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}


class Background extends StatelessWidget {
  const Background({super.key});




  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff262F4C),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/foto2.jpg')));
  }
}


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color(0xff262F4C),
      child: Center(
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor:const Color.fromARGB(255, 81, 119, 245),
            shape: const StadiumBorder(),
          ), 
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40),
            child:  Text("bienvenido", style: TextStyle(color: Colors.white, fontSize: 23) ),
          ),),
      ),
    );
  }
}