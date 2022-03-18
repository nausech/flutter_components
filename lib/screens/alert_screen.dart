import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
   void displayDialogIOS( BuildContext context ) {

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10 ),
              FlutterLogo( size: 100 )
            ],
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle( color: Colors.red ))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),

          ],
        );
      }
    );

  }
  
  void displayDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Hola mundo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
               Text('Occaecat nisi ad aute proident nisi. Labore ad irure occaecat in ex ullamco. Aute sint id eiusmod nisi consectetur.')
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
               child: const Text('Cancelar')
            )
          ],
        ) ; 
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid
            ? displayDialog (context)
            : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child:  Text('Mostrar alerta', style: TextStyle(fontSize: 30),),
          ),
          
        ),
       
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.exit_to_app),
        
      ),
    );
  }
}