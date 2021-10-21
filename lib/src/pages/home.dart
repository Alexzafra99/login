import 'package:flutter/material.dart';
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String _usuario = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: "Usuario",
                labelText: "Usuario",
                suffixIcon: Icon(Icons.accessibility),
                icon: Icon(Icons.account_circle),
              ),
              onChanged: (valor){
                setState(() {
                  _usuario=valor;
                });         
              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: "Contraseña",
                labelText: "Contraseña",
                suffixIcon: Icon(Icons.lock_open),
                icon: Icon(Icons.lock_outline_rounded),
              ),
              onChanged: (valor){
                setState(() {
                  _password=valor;
                });         
              },
            ),
            TextButton(
              onPressed: () {
                
              }, 
              child: Text("Acceder")
            ),
          ],
      ),
    );
  }
}
