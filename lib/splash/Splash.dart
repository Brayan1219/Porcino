import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:porci/inicio/paginainicial.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  //Forma para llamar al metodo
    void initState(){
      Future.delayed(Duration(seconds: 7), (){
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => inicio())
        );
      });

      super.initState();
    }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/fondo.gif'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 400,
              margin: EdgeInsets.only(top: 100),
              child: Lottie.asset('img/cerdito.json'),
            ),
          ],
        ),
      )
    );
  }
}