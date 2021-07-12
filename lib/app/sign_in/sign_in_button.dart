import 'package:flutter/cupertino.dart';
import 'package:time_tracker/widgests/customRaisedButton.dart';

class SginInButton extends CustomRaisedButton {
  SginInButton(
      {@required String text, Color color, Color textColor, VoidCallback onPressed})
      :assert(text!=null),
        super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
          color: color,
          onPressed: onPressed,
        );
}
