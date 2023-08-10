import 'package:flutter/material.dart';
import 'package:porci/inicio/paginainicial.dart';
import 'package:porci/inicio/sesion.dart';

void registro() {
  runApp(inicioregistro());
}

class inicioregistro extends StatelessWidget {

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
      home: forregistro(),
    );
  }
}

class forregistro extends StatefulWidget {

  @override
  State<forregistro> createState() => _forregistroState();
}

class _forregistroState extends State<forregistro> {


  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 851,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/registroinicio.jpg'),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            children: [
              Container(
                width: 310,
                height: 220,
                margin: EdgeInsets.only(top: 135,left: 0,right: 0, bottom: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/cerdito.gif'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                width: double.infinity,
                height: 472,
                child: Column(
                  children: [
                    Form(
                      //key: _formulario,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15,left: 60,right: 60),
                              decoration: BoxDecoration(
                                //gradient: LinearGradient(
                                // colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                //   stops: [0.3,0.9]
                                // )
                              ),
                              child: documento(),
                            ),
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
                              child: correo(),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10,left: 60,right: 60),
                              decoration: BoxDecoration(
                                //gradient: LinearGradient(
                                //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                //                                ),

                              ),
                              child: contra2(),
                            ),
                            Container(
                                child:Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 35,left: 135),
                                      child: Center(
                                        child: ElevatedButton(onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context)=>formuiniciosesion(),
                                          )
                                          );
                                          //action
                                        }, child: Text('REGISTRARME'),
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
                              color: Color.fromRGBO(246, 217, 202, 100),
                              width: double.infinity,
                              height: 2,
                              margin: EdgeInsets.only(top: 46,left: 22,right: 20),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin:EdgeInsets.only(top: 7,left: 85),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context)=>formuiniciosesion(),
                                          )
                                          );
                                          //action
                                        },
                                        child: Text(' YA TENGO UNA CUENTA !',
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
                                        child: Text(' HOME',
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

  Container documento(){
    return Container(
      color: Colors.white,
      height: 60,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Ingrese Id',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'DOCUMENTO',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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


  Container usuario(){
    return Container(
      height: 60,
      child: TextFormField(

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

  Container correo(){
    return Container(
      height: 60,
      child: TextFormField(

        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(

            prefixIcon: Icon(Icons.attach_email_outlined,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Ingrese Correo',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'CORREO',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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

  Container contra2(){

    return Container(
      height: 60,
      child: TextFormField(

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