import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_6319c10030/views/login_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({Key? key}) : super(key: key);

  @override
  State<RegisterUI> createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 231, 229, 229),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          tooltip: "black",
          onPressed: () {
            var rount = MaterialPageRoute(
              builder: (context) => LoginUI(),
            );
            Navigator.of(context).push(rount);
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 231, 229, 229),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Let's Get Started!",
              style: TextStyle(
                fontSize: 45.0,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Create new account for Flutter Dev.",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'ป้อนรหัสนักศึกษา',
                prefixIcon: Icon(
                  Icons.people_alt,
                  color: Colors.blue,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'ป้อนอีเมล์',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.blue,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'ป้อนเบอร์โทรศัพท์',
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  color: Colors.blue,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'ป้อนรหัสผ่าน',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.blue,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gapPadding: 5,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'ยืนยันรหัสผ่าน',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.blue,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  gapPadding: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  gapPadding: 5,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 95.0, right: 95.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 58, 86),
                  minimumSize: const Size.fromHeight(60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 6.0,
                ),
                InkWell(
                  onTap: () {
                    var rount = MaterialPageRoute(
                      builder: (context) => LoginUI(),
                    );
                    Navigator.of(context).push(rount);
                  },
                  child: Text(
                    "Login here",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
