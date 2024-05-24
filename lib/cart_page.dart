import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

        ElevatedButton(
          onPressed: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Cart()));
    },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.blue),
        ),




      ),

      ])


    );
  }
}
