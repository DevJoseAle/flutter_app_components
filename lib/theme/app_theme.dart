
import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromARGB(255, 99, 181, 95);
  static final ThemeData lightTheme =  ThemeData.light().copyWith(
        // Color Primario
        primaryColor: Colors.amber,

        // AppbarTheme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 2,
           ),
        
        // TextButton
        textButtonTheme: TextButtonThemeData( 
          style: TextButton.styleFrom( primary: primary)
          ),
          // FloatingActionButton
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: primary,

          ),
          
          // Elevated button Theme
          elevatedButtonTheme: ElevatedButtonThemeData( 
            style: ElevatedButton.styleFrom(
            primary: AppTheme.primary, 
            elevation: 5,
            shadowColor: AppTheme.primary.withOpacity(0.3),
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            shape: const StadiumBorder(),
            ),

            
          ),
          // InputTheme
          inputDecorationTheme: const InputDecorationTheme(
            
            // Color del label:
            floatingLabelStyle: TextStyle(color: primary),

            // Borde habilitado
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topLeft:  Radius.circular(15)
              )
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topLeft:  Radius.circular(15)
              )
            ),
          
             border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topLeft:  Radius.circular(15)
                )
            )

          )

        
      
      );
  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
        //Color del scaffold
        scaffoldBackgroundColor: Colors.black54, 
    
        // Color Primario
        primaryColor: Colors.indigo[100],

        // AppbarTheme
        appBarTheme: const AppBarTheme(

          color: primary,
          elevation: 2,
          
          // Color de la letra en el AppBar
          foregroundColor: Colors.white,

          
           )
      );
}