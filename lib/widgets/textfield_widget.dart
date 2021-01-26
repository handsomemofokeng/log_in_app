import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in_app/ui/shared/globals.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  TextFieldWidget(
      {this.hintText,
      this.prefixIconData,
      this.suffixIconData,
      this.obscureText,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      style: TextStyle(
        color: Global.colorPrimary,
        fontSize: 14.0,
      ),
      cursorColor: Global.colorPrimaryDark,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Global.colorPrimary,
        ),
        // filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Global.colorPrimaryDark),
        ),

        suffixIcon: Icon(
          suffixIconData,
          size: 18,
          color: Global.colorPrimary,
        ),
        labelStyle: TextStyle(color: Global.colorPrimary),
        focusColor: Global.colorPrimary,
      ),
    );
  }
}
