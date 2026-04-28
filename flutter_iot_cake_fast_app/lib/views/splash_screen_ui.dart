// ignore_for_file: must_call_super

import 'package:flutter/material.dart';
import 'package:flutter_iot_cake_fast_app/views/cake_shop_list_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState(){
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CakShoopListUi(),
          ),
          );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_welcome.png"),
            fit: BoxFit.cover,
        ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text(
                'เค้กผมอร่อยที่สุด',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255,238,0,0)
                ),
              ),
                SizedBox(height: 5,),
              Text(
                'CAKE CALL FAST',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255,238,0,0)
                ),
              ),
              SizedBox(height: 180),
              CircularProgressIndicator(
                color: const Color.fromARGB(255,51,0,0)
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}