
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';



class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Camlo',
      'last_name' : 'Narvaez',
      'email'     : 'camilonarus@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                  CustomInputField(
                  hintText: 'Nombres',
                  labelText: 'Nombres', 
                  formProperty: 'first_name',  
                  formValue: formValues,             
                  ),
                  const SizedBox( height: 30,),
                  CustomInputField(
                  hintText: 'Apellidos',
                  labelText: 'Apellidos',
                  formProperty: 'last_name',  
                  formValue: formValues, 
                  ),
                  const SizedBox( height: 30,),
                  CustomInputField(
                  hintText: 'Correo',
                  labelText: 'Correo electronico',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',  
                  formValue: formValues, 
                  ),
                  const SizedBox( height: 30),
                  CustomInputField(
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  isPassword: true, 
                  formProperty: 'password',  
                  formValue: formValues, 
                  ),
                  const SizedBox( height: 30),

                  DropdownButtonFormField(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value:'Admin', child: Text('Admin')),
                      DropdownMenuItem(value:'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(value:'Junior', child: Text('Junior')),
                      DropdownMenuItem(value:'Senior', child: Text('Senior'))
                    ], 
                    
                    onChanged: (String? value) {  
                      formValues['role'] = value ?? 'Admin';
                    }, 
                    
                  ),
                  const SizedBox( height: 30),

                  ElevatedButton(
                    onPressed:(){
                      FocusScope.of(context).requestFocus(FocusNode());
                      if(!myFormKey.currentState!.validate()){
                        return;
                      }
                      print(formValues);
                    }, 
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    )
                  )
          
              ],
            ),
          ),
        ),
      )
    );
  }
}

