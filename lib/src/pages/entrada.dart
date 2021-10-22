import 'package:flutter/material.dart';
import 'package:login/src/pages/login.dart';

class Entrada extends StatefulWidget {

  @override
  _EntradaState createState() => _EntradaState();
}

class _EntradaState extends State<Entrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Principal"),
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.exit_to_app)
            ),
            onTap: (){
              Navigator.push( context, MaterialPageRoute(
                    builder: (context) => Login()),
                  );
            },
          ),            
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: NetworkImage("https://th.bing.com/th/id/R.26a50a5007eaf1aeffcfbb447b68514b?rik=tPRjTZNy7wpsag&pid=ImgRaw&r=0"),width: 200,),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: ()=>_mostrarInfo(context), 
              child: Text("Info"))
          ]
        )
      ),
    );
  }

  _mostrarInfo(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          title: Text("Has iniciado sesión correctamente"),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Pulsa el botón de la esquina superior derecha para cerrar sesión"),
              Icon(Icons.exit_to_app_rounded)
            ],
          ),
           actions: [
            TextButton(
              child: Text("Cerrar"),
              onPressed: (){
                Navigator.of(context).pop();
              },   
            ),
          ], 
        );
      }, 
    ); 
  }
}