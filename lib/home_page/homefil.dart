import 'package:bmi_app/home_page/abzar/abzarL.dart';
import 'package:bmi_app/home_page/abzar/abzarR.dart';
import 'package:flutter/material.dart';

class HomeFile extends StatefulWidget {
  const HomeFile({super.key});

  @override
  State<HomeFile> createState() => _HomeFileState();
}

class _HomeFileState extends State<HomeFile> {
  final weighControl1 = TextEditingController();
  final highControl2 = TextEditingController();
  double bim = 0.0;
  double vazn_normal = 0.0;
  double vazn_azafe = 0.0;
  String vzit = 'مقددار  را وارد کنید ';
  double good = 0.0;
  double bad = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              child: TextField(
                controller: weighControl1,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'وزن',
                  hintStyle: TextStyle(
                    color: Colors.amber.withAlpha((0.5 * 255).toInt()),
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              child: TextField(
                controller: highControl2,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'قد',
                  hintStyle: TextStyle(
                    color: Colors.amber.withAlpha((0.5 * 255).toInt()),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 100),
        InkWell(
          onTap: () {
            final weigh = double.parse(weighControl1.text);
            final heigth = double.parse(highControl2.text);
            setState(() {
              bim = weigh / (heigth * heigth);
              vazn_normal = (heigth * heigth) * 24.9;
              vazn_azafe = weigh - vazn_normal;

              if (bim >= 40) {
                good = 50;
                bad = 200;
                vzit = 'چاقی درجه ۳ (مفرط)';
              } else if (bim >= 35 && bim <= 39.9) {
                bad = 50;
                good = 200;
                vzit = ' چاقی درجه ۲ ';
              } else if (bim >= 30 && bim <= 34.9) {
                bad = 50;
                good = 200;
                vzit = ' چاقی درجه 1 ';
              } else if (bim >= 25 && bim <= 29.9) {
                bad = 50;
                good = 200;
                vzit = ' اضافه‌وزن ';
              } else if (bim >= 18.5 && bim <= 24.9) {
                bad = 50;
                good = 200;
                vzit = '  وزن نرمال  ';
              } else {
                good = 10;
                bad = 10;
                vzit = '  کمبود وزن ';
              }
            });
          },
          child: Text(
            '!محاسبه کن ',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        Text(
          '${bim.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          '$vzit',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${vazn_azafe.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 20),
            getrowR(arz: 40, tol: bad),
          ],
        ),
        Row(
          children: [
            getrowL(arz: 40, tol: good),
            SizedBox(width: 20),
            Text(
              '${vazn_normal.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
