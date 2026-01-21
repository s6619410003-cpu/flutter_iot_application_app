import 'package:flutter/material.dart';
import 'package:flutter_iot_application_app/views/signin_ui.dart' show Signinui;
import 'package:flutter_iot_application_app/views/signup_ui.dart' show Signupui;
import 'package:google_fonts/google_fonts.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 100),
            Text(
              'ยินดีต้อนรับ เข้าสู่ระบบ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'South East Asia University',
              style: GoogleFonts.italianno(
                fontSize: 30,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'Creative by Computer Engineering',
              style: GoogleFonts.italianno(
                fontSize: 30,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signinui(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        150,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signupui(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      150,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Signup',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
