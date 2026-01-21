import 'package:flutter/material.dart';
import 'package:flutter_iot_application_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
      //เรียกใช้งานคลาสที่เรียกใช้ widget หลักของแอป
      FlutterIotApplicationApp());
}

//---------------------------------
class FlutterIotApplicationApp extends StatefulWidget {
  const FlutterIotApplicationApp({super.key});

  @override
  State<FlutterIotApplicationApp> createState() =>
      _FlutterIotApplicationAppState();
}

class _FlutterIotApplicationAppState extends State<FlutterIotApplicationApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ซ่อนป้าย Debug
      home: HomeUi(), //กำหนดหน้าจอแรก
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
