import 'dart:async';

import 'package:farm_ugg_14/pageUi/main.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});


  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 40, 96),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Добро пожаловать\nв "Фарм Юг"',
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Image.asset('assets/image1.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/image2.png'),
            ],
          ),
        ],
      ),
    );
  }
}
