import 'package:flutter/material.dart';

 const labelTextStyle = TextStyle(fontSize: 18, color: Colors.white);

class IconContent extends StatelessWidget {
 IconContent({this.icon,this.label});
 final IconData icon;
 final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 70,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$label',
          style: labelTextStyle,
        )
      ],
    );
  }
}

