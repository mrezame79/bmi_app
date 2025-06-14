import 'package:bmi_app/home_page/appbar/appbarr.dart';
import 'package:bmi_app/home_page/homefil.dart';
import 'package:flutter/material.dart';

class homskrin extends StatelessWidget {
  const homskrin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: getappbarr(),
      body: SafeArea(
        child: SingleChildScrollView(child: Column(children: [HomeFile()])),
      ),
    );
  }
}
