 
import 'package:bmi_app/home_page/consts/colrs.dart';
import 'package:flutter/material.dart';

class getrowR extends StatelessWidget {
  final double arz;
  final double tol;
  const getrowR({super.key, required this.arz, required this.tol});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('وزن اضافه',
            style: TextStyle(color: Colors.red), textAlign: TextAlign.center),
        SizedBox(height: 60),
        Container(
          height: arz,
          width: tol,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            color: orngcolrs,
          ),
        ),
      ],
    );
  }
}
