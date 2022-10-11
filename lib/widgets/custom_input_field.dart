import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

  // props de los inputs
  final String inputHint;
  final String inputLabel;
  final Icon? inputIcon;
  final TextCapitalization textCapitalization;
  final TextInputType textInputType;
  final bool obscureText;

  // Valores Input

  final String formProperty;
  final Map<String, String> formValues;
  

  const CustomInputField({
    Key? key, 
    
    // Valores del input
    required this.formProperty, 
    required this.formValues,

    required this.inputHint, 
    required this.inputLabel, 
    required this.inputIcon, 
    required this.textCapitalization, 
    required this.textInputType, 
    this.obscureText  = false, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [

        TextFormField(
          
          autofocus: false, //Para que inicie de forma automatica al abrir
          textCapitalization: textCapitalization,
          obscureText: obscureText,
          keyboardType: textInputType,

          onChanged: (value){ //Function para obtener valor 
            formValues[formProperty] = value;
          },
          validator: (value){
            if( value == null) return 'Este campo es requerido';
            return value.length < 3 ? 'Deben ser más de 3 caracteres':null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
        
          decoration: InputDecoration(
            label: Text(inputLabel),
            hintText: inputHint,
            icon: inputIcon, // Icono externo

           

          ),
          
          )
      ],
    );
  }
}