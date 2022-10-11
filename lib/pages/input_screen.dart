import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'José',
      'phone'      : '912345678',
      'email'      : 'jose@jose.com',
      'password'   : '123456',
      'role'       : 'admin'
    };

    return  Scaffold(
      appBar: AppBar(
        title: Text('Input Widget')
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:[
                CustomInputField(
                  inputHint:' Fulano de Tal' , 
                  inputLabel: 'Nombre y apellido' , 
                  inputIcon: Icon(Icons.person),
                  textCapitalization: TextCapitalization.words,
                  textInputType: TextInputType.text, 
                  formProperty: 'first_name', 
                  formValues: formValues,),
                SizedBox( height: 25),
          
                CustomInputField(
                  inputHint: 'Correo@Correo.com' ,
                  inputLabel:'Correo' , 
                  inputIcon: Icon(Icons.mail_outline),
                  textCapitalization: TextCapitalization.words,
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues, ),
                SizedBox( height: 25),
          
          
                CustomInputField(
                  inputHint:'+56912345678' , 
                  inputLabel:'Telefono' , 
                  inputIcon: Icon(Icons.phone_android),
                  textCapitalization: TextCapitalization.words ,
                  textInputType: TextInputType.phone,
                  formProperty: 'phone', 
                  formValues: formValues,),
                SizedBox( height: 25),

                CustomInputField(
                  inputHint:'Password' , 
                  inputLabel:'PassWord' , 
                  inputIcon: Icon(Icons.password_outlined),
                  textCapitalization: TextCapitalization.words ,
                  obscureText: true,
                  textInputType: TextInputType.text,
                  formProperty: 'password', 
                  formValues: formValues),
                SizedBox( height: 25),

                DropdownButtonFormField<String>(
                  hint: const Text('Tipo de Usuario'),
                  //Items
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Supervisor', child: Text('Supervisor'))
                  ], 
                  isExpanded: true,
                  onChanged: (value){
                    formValues['role'] = value ?? 'Admin';
                  }
                  ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Registrar')),
                  ),
                  onPressed: (){
                  
                    FocusScope.of(context).requestFocus(FocusNode());

                    if( !myFormKey.currentState!.validate()){
                      return print('Form no valido');
                    }
                    
                    print(formValues);
        
                  }, 
                )
                  
          
              ],),
          )
          
          ) 
      ,)
    );
  }
}

