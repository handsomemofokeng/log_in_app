import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in_app/ui/shared/globals.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;

  ButtonWidget({this.title, this.hasBorder});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? Global.colorWhite : Global.colorPrimaryDark,
          borderRadius: BorderRadius.circular(50),
          border: hasBorder
              ? Border.all(
                  color: Global.colorPrimaryDark,
                  width: 1.0,
                )
              : Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 60.0,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder ? Global.colorPrimary : Global.colorWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
