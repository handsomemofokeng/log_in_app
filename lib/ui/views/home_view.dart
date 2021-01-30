import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in_app/core/viewmodels/home_model.dart';
import 'package:log_in_app/ui/shared/globals.dart';
import 'package:log_in_app/widgets/button_widget.dart';
import 'package:log_in_app/widgets/textfield_widget.dart';
import 'package:log_in_app/widgets/wave_widget.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);
    final size = MediaQuery.of(context).size;
    final bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: Global.colorWhite,
      body: Stack(
        children: [
          Container(
            height: size.height - 200,
            color: Global.colorPrimaryDark,
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 800),
            curve: Curves.easeOutQuad,
            top: isKeyboardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Global.colorWhite,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 63.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Global.colorWhite,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.email_outlined,
                  suffixIconData: model.isValid ? Icons.check : null,
                  onChanged: (value) {
                    model.isValidEmail(value);
                  },
                ),
                SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFieldWidget(
                      hintText: 'Password',
                      obscureText: model.isVisible ? false : true,
                      prefixIconData: Icons.lock_outlined,
                      suffixIconData: model.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ButtonWidget(
                        title: 'Register',
                        hasBorder: true,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: ButtonWidget(
                        title: 'Sign In',
                        hasBorder: false,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
