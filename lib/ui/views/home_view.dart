import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in_app/widgets/textfield_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextFieldWidget(
              hintText: 'Email',
              obscureText: false,
              prefixIconData: Icons.email_outlined,
            ),
            SizedBox(
              height: 14.0,
            ),
            TextFieldWidget(
              hintText: 'Password',
              obscureText: true,
              prefixIconData: Icons.lock_outlined,
            ),
            SizedBox(
              height: 14.0,
            ),
          ],
        ),
      ),
    );
  }
}
