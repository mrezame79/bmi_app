 
import 'package:bmi_app/consts/colrs.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget getappbarr() {
  return AppBar(
    title: Text('BMI تو چنده ؟', style: TextStyle(color: grinepasetecolrs)),
    centerTitle: true,
    backgroundColor: Colors.transparent,
  );
}
