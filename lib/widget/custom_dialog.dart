import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/colors.dart';

class CustomDialog extends StatelessWidget {
  final String title,
      description,
      primaryButtonText,
      primaryButtonRoute,
      secondaryButtonText,
      secondaryButtonRoute;

  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.primaryButtonText,
    @required this.primaryButtonRoute,
    this.secondaryButtonText,
    this.secondaryButtonRoute,
  });

  static const double padding = 20;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(padding)),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(padding),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 0.0,
                    offset: const Offset(0.0, 2.0),
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 24.0),
                AutoSizeText(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: PrimaryColor, fontSize: 25.0),
                ),
                SizedBox(height: 24.0),
                AutoSizeText(
                  description,
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 25.0),
                ),
                SizedBox(height: 24.0),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushReplacementNamed(primaryButtonRoute);
                  },
                  color: PrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AutoSizeText(
                      primaryButtonText,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                showSecondaryButton(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  showSecondaryButton(BuildContext context) {
    if (secondaryButtonRoute != null && secondaryButtonText != null) {
      return FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed(secondaryButtonRoute);
        },
        child: AutoSizeText(
          secondaryButtonText,
          maxLines: 1,
          style: TextStyle(
              fontSize: 18, color: PrimaryColor, fontWeight: FontWeight.w400),
        ),
      );
    } else {
      SizedBox(height: 10.0);
    }
  }
}
