import 'package:flutter/material.dart';
import 'package:login/src/pages/entrada.dart';
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
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
            SizedBox(height:50),
            ElevatedButton(
              onPressed: () {
                if((_usuario==_password) && _usuario!=""){
                  Navigator.push( context, MaterialPageRoute(
                    builder: (context) => Entrada()),
                  );
                }
                else{
                  _mostrarError(context);
                }
              },
              child: Text("Acceder",style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: StadiumBorder(),
              )
            ),
          ],
      ),
    );
  }

  _mostrarError(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text("Error al iniciar sesión"),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Pista:\nPara acceder al sistema introduce el mismo texto en el campo Ususario y Contraseña"),
              SizedBox(height: 20),
              Icon(Icons.error_outline)
            ],
          ),
        );
      }, 
    ); 
  }
}
