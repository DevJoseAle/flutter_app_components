import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderState = 1;

  bool _checkboxState = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('TitleScreen'),
      ),
      body: Column(
        children: [

          Slider.adaptive(
            min: 0,
            max: 550,
            value: _sliderState, 

            onChanged: _checkboxState ? (value){ _sliderState = value; setState(() {});} : null,

            // Estilos al Slider:
            activeColor: AppTheme.primary,
            divisions: 10,
            thumbColor: Colors.deepPurple,
        
            ),

            Checkbox(
              // Estilos del check
              splashRadius:50, //Tamaño del splash al click.
              activeColor: AppTheme.primary,
              checkColor: Colors.amber,
              value: _checkboxState, 
              onChanged: (value){

                _checkboxState = value ?? true;
                setState((){});

            }),

            Switch(
              // Estilos del switch
              splashRadius:50, //Tamaño del splash al click.
              activeColor: AppTheme.primary,
              value: _checkboxState, 
              onChanged: (value){

                _checkboxState = value;
                setState((){});

            }),

            CheckboxListTile(
              // Estilos del check
              title:Text('Habilitar Slider'), //Tamaño del splash al click.
              activeColor: AppTheme.primary,
              checkColor: Colors.amber,
              value: _checkboxState, 
              onChanged: (value){
                _checkboxState = value ?? true;
                setState((){});

            }),
            

            SwitchListTile(
              // Estilos del switch
              title: Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _checkboxState, 
              onChanged: (value){

                _checkboxState = value;
                setState((){});

            }),

            
           Expanded(
             child: SingleChildScrollView(
               child: Image(
                image: const NetworkImage('https://www.pngmart.com/files/2/Batman-PNG-Image.png'),
                fit: BoxFit.contain,
                width: _sliderState,
                ),
             ),
           )
        ],
      ),
    ); 
  }
}