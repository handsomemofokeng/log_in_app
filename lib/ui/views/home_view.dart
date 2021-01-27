import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in_app/ui/shared/globals.dart';
import 'package:log_in_app/widgets/button_widget.dart';
import 'package:log_in_app/widgets/textfield_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextFieldWidget(
              hintText: 'Email',
              obscureText: false,
              prefixIconData: Icons.email_outlined,
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFieldWidget(
                  hintText: 'Password',
                  obscureText: true,
                  prefixIconData: Icons.lock_outlined,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Global.colorPrimary,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(height: 14.0),
            ButtonWidget(
              title: 'Sign In',
              hasBorder: false,
            ),
            SizedBox(height: 10.0),
            ButtonWidget(
              title: 'Register',
              hasBorder: true,
            ),
          ],
        ),
      ),
    );
  }
}
