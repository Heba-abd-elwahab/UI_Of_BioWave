import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const HeaderFontSize = Colors.black;
const BodyFontSize = Color.fromRGBO(122, 122, 122, 1);
const MainColor = Color.fromRGBO(25, 51, 81, 1);

Widget InsertImage(
    String ImagePath, double left, double top, double right, double bottom,BuildContext context) {
  return Container(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      height: MediaQuery.of(context).size.height*0.65,
      child: Image.asset(
        ImagePath,
        fit: BoxFit.cover,
      ));
}
