import 'package:flutter/material.dart';
import 'package:porci/inicio/paginainicial.dart';
import 'package:porci/inicio/registroinicio.dart';

import '../services/firebase_service.dart';

void iniciosesion() {
  runApp(foriniciosesion());
}

class foriniciosesion extends StatelessWidget {

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
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: formuiniciosesion(),
    );
  }
}

class formuiniciosesion extends StatefulWidget {

  @override
  State<formuiniciosesion> createState() => _formuiniciosesionState();
}

class _formuiniciosesionState extends State<formuiniciosesion> {

  TextEditingController correocontroller=TextEditingController(text: "");
  TextEditingController contrasenacontroller=TextEditingController(text: "");

  MaterialColor mycolor = MaterialColor(Color.fromRGBO(149, 149, 210, 1).value, <int, Color>{
    50: Color.fromRGBO(149, 149, 210, 0.1),
    100: Color.fromRGBO(149, 149, 210, 0.2),
    200: Color.fromRGBO(149, 149, 210, 0.3),
    300: Color.fromRGBO(149, 149, 210, 0.4),
    400: Color.fromRGBO(149, 149, 210, 0.5),
    500: Color.fromRGBO(149, 149, 210, 0.6),
    600: Color.fromRGBO(149, 149, 210, 0.7),
    700: Color.fromRGBO(149, 149, 210, 0.8),
    800: Color.fromRGBO(149, 149, 210, 0.9),
    900: Color.fromRGBO(149, 149, 210, 1),
  },
  );

  bool _isObscure = true;
  bool _isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 851,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/iniciosesion.jpg'),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 250,
                margin: EdgeInsets.only(top: 110,left: 0,right: 0, bottom: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/cerdito.gif'),
                        fit: BoxFit.cover
                    )

                ),
              ),
              Container(
                width: double.infinity,
                height: 443,
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Form(
                        //key: _formulario,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10,left: 60,right: 60),
                              decoration: BoxDecoration(
                                //gradient: LinearGradient(
                                //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                //stops: [0.3,0.9]
                                //),

                              ),
                              child: usuario(),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10,left: 60,right: 60),
                              decoration: BoxDecoration(
                                //gradient: LinearGradient(
                                //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                //                                ),

                              ),
                              child: contra(),
                            ),
                            Container(
                                child:Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 50,left: 130),
                                      child: Center(
                                        child: ElevatedButton(onPressed: () async {
                                          await signInWithDocumentAndPassword(
                                            correocontroller.text,
                                            contrasenacontroller.text,
                                          );
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context)=>inicio(),
                                          )
                                          );
                                          //action
                                        } , child: Text('INICIAR SESION'),
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                                  (Set<MaterialState> states) {
                                                if (states.contains(MaterialState.pressed))
                                                  return Color.fromRGBO(121, 101, 178, 100); //<-- SEE HERE
                                                return null; // Defer to the widget's default.
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Container(
                              color: Color.fromRGBO(149, 149, 210, 0.3),
                              width: double.infinity,
                              height: 2,
                              margin: EdgeInsets.only(top: 78),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin:EdgeInsets.only(top: 7,left: 85),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context)=>forregistro(),
                                          )
                                          );
                                          //action
                                        },
                                        child: Text(' NO TENGO UNA CUENTA !',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(176, 196, 222, 0.9),
                                              fontWeight: FontWeight.w700),
                                        )
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top: 7,left: 0),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context)=>inicio(),
                                          )
                                          );
                                          //action
                                        },
                                        child: Text(' INICIO',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(173, 216, 230, 0.9),
                                              fontWeight: FontWeight.w700),
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container usuario(){
    return Container(
      height: 60,
      child: TextFormField(
        controller: correocontroller,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity_outlined,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
          hintText: 'Nombre Usuario',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'USUARIO',
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }


  Container contra(){
    return Container(
      height: 60,
      child: TextFormField(
        controller: contrasenacontroller,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        obscureText: _isObscure,
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
          hintText: 'Ingrese Contraseña',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CONTRASEÑA',
          suffixIcon: IconButton(
              icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),

        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

}