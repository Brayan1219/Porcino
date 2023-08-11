import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseFirestore db=FirebaseFirestore.instance;

Future<void> addPeople(String documento, String usuario, String email, String password) async {
  try {
    await db.collection("usuarios").add({
      "documento": documento,
      "usuario": usuario,
      "email": email,
      "password": password,
    });
    print("Datos agregados exitosamente");
  } catch (e) {
    print("Error al agregar datos: $e");
  }
}

Future<void> signInWithDocumentAndPassword(String email, String password) async {
  try {

    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    print('Inicio de sesión exitoso');
  } catch (e) {
    print('Error al iniciar sesión: $e');
  }
}
