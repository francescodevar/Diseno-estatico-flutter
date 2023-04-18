import 'package:flutter/material.dart';

class Pagetittle extends StatelessWidget {
  const Pagetittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Container(
          margin: 
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Classify transaction',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 10,),
              Text(
                'Classify this transaction into a particular category',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
        ));
  }
}
