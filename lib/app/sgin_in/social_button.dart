import 'package:flutter/cupertino.dart';
import 'package:time_tracker/widgests/customRaisedButton.dart';

class SocialSginInButton extends CustomRaisedButton {
  SocialSginInButton(
      { @required String assetName,@required String text, Color color, Color textColor, VoidCallback onPressed})
      :assert(text!=null),
        assert(assetName!=null),super(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          assetName,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 15.0,
          ),
        ),
        Opacity(opacity: 0,
          child: Image.asset(
            assetName,
          ),
        ),
      ],
    ),
    color: color,
    onPressed: onPressed,
  );
}
