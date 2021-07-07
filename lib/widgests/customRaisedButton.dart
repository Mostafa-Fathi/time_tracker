import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double radius;
  final VoidCallback onPressed ;
  final double buttonHeight ;

  const CustomRaisedButton({ this.child, this.color, this.radius:6, this.onPressed, this.buttonHeight:50}) :assert(radius>0);




  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      child: RaisedButton(
        color: color,
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

