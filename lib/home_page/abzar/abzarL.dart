 
import 'package:bmi_app/consts/colrs.dart';
import 'package:flutter/material.dart';

class getrowL extends StatelessWidget {
  final double arz;
  final double tol;
  const getrowL({super.key, required this.arz, required this.tol});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 60),
        Container(
          height: arz,
          width: tol,
     
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
            color: grinabricolrs,
          ),
        ),
        Text('وزن ایده آل',style: TextStyle(color: Colors.green), textAlign: TextAlign.center)
      ],
    );
  }
}
