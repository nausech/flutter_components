import 'package:flutter/material.dart';
import '../theme/app_theme.dart';


class CustomInputField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final String? counterText;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValue;
  
  const CustomInputField({
    Key? key, 
    this.labelText, 
    this.hintText, 
    this.helperText, 
    this.icon, 
    this.sufixIcon, 
    this.counterText, 
    this.keyboardType, 
    this.isPassword = false, 
    required this.formProperty, 
    required this.formValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: (value) => formValue[formProperty] = value,
      validator: (value){
        if( value == null ) return 'Este Campo es requerido';
        return value.length < 3 ? 'Mínimo de 4 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        prefixIcon: icon == null ? null : Icon(icon, color: AppTheme.primary),
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon, color: AppTheme.primary),
      ),
    );
  }
}