import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  // Alerta para ios
  void showAlertIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder:  (context){
        return CupertinoAlertDialog(
          title: const Text('¡¡Alerta!!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la Alerta')
          ]),
          actions:[
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cerrar'),
              ),

          ],
        );
      }
    );
  }



  // Alerta para Android
  void showAlert(BuildContext context){
    // Función que mostrará la alerta
    showDialog(

      //Para que se cierre la alerta cuando pinchemos en la sombra
      barrierDismissible: true,
      
      context: context, 
      builder: (context){
        return AlertDialog(
          clipBehavior: Clip.antiAlias ,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: const Text('¡¡Alerta!!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la Alerta')
          ]),
        
          actions:[
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cerrar'),
              ),

          ],
        );
      }
      );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Screen')),
      body:  Center(
         child: ElevatedButton(
          child: const Text('Mostrar Alerta'),
          
          onPressed: () => Platform.isAndroid
              ? showAlert(context)
              : showAlertIOS(context)
         ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Text('Back'),

        onPressed: (){
        Navigator.pop(context);
        }
        ),
    );
  }
}