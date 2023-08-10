import 'package:flutter/material.dart';
import 'package:porci/inicio/registroinicio.dart';
import 'package:porci/inicio/sesion.dart';

class inicio extends StatelessWidget {

  MaterialColor mycolor = MaterialColor(Color.fromRGBO(229, 203, 206, 1).value, <int, Color>{
    50: Color.fromRGBO(229, 203, 206, 0.1),
    100: Color.fromRGBO(229, 203, 206, 0.2),
    200: Color.fromRGBO(229, 203, 206, 0.3),
    300: Color.fromRGBO(229, 203, 206, 0.4),
    400: Color.fromRGBO(229, 203, 206, 0.5),
    500: Color.fromRGBO(229, 203, 206, 0.6),
    600: Color.fromRGBO(229, 203, 206, 0.7),
    700: Color.fromRGBO(229, 203, 206, 0.8),
    800: Color.fromRGBO(229, 203, 206, 0.9),
    900: Color.fromRGBO(229, 203, 206, 1),
  },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PORCI",
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: ini(),
    );
  }
}

class ini extends StatefulWidget {
  const ini({super.key});

  @override
  State<ini> createState() => _iniState();
}

class _iniState extends State<ini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 851,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/fondoini.gif'),
                  fit: BoxFit.cover
              )
          ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 121,
                  margin: EdgeInsets.only(top: 100, bottom:0 ),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              width: 180,
                              height: 100,
                              margin: EdgeInsets.only(left: 0,right: 10),
                                child: Center(
                                  child: Text('PORCI',
                                    style: TextStyle(
                                        fontSize: 60,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                            ),
                            Container(
                              //color: Colors.amber,
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('img/logosena.png'),
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 210,
                  margin: EdgeInsets.only(top: 310),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 40, left: 10, right: 10),
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(150)),
                          //color: Color.fromRGBO(134, 115, 161, 150),
                        ),
                        child: botton1(),
                      ),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(150)),
                          ),
                          child: botton2(),
                        ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.only(top: 40 ,left: 40, right: 40),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>inicio(),
                              )
                              );
                              //action
                            },
                            child: Text(' NO TENGO UNA CUENTA !',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(183, 132, 127, 0.9),
                                  fontWeight: FontWeight.w700),
                            )
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>formuiniciosesion(),
                              )
                              );
                              //action
                            },
                            child: Text('INICIAR SESION',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(202, 165, 154, 0.9),
                                  fontWeight: FontWeight.w700),
                            )
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(246, 217, 202, 100),
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.only(top: 5),
                )
              ],
            )
        ),
      ),
    );
  }

  Container botton1(){
    return Container(
      width: double.infinity,
      height: 50,

      //color: Colors.cyanAccent,

      child: ElevatedButton.icon(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>formuiniciosesion()));
      },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Color.fromRGBO(222, 165, 164, 100); //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
        ),
        icon: Icon(
          Icons.arrow_circle_right,
          color: Colors.white54,
          size: 30,
        ),
        label: Text(
          'INICIAR SESION',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }

  Container botton2(){
    return Container(
      width: double.infinity,
      height: 50,


      //color: Colors.cyanAccent,

      child: ElevatedButton.icon(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>inicioregistro()));
      },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Color.fromRGBO(222, 165, 164, 100); //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
        ),
        icon: Icon(
          Icons.arrow_circle_right,
          color: Colors.white54,
          size: 30,
        ),
        label: Text(
          'REGISTRARME',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}
