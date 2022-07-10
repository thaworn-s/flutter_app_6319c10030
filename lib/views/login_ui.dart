import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 229, 229),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/flutter_logo.png',
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'Welcome to FLUTTER',
              style: TextStyle(
                fontFamily: 'Kanit-Bold.ttf',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'DESIGH YOUR LIFE',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'DESIGH YOUR FUTRUE',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ป้อนรหัสนักศึกษา',
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ป้อนรหัสผ่าน',
                  prefix: Icon(
                    FontAwesomeIcons.userLock,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'LOG IN',
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 51, 92),
                fixedSize: Size(
                  200.0,
                  50.0,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Or Login with',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 135,
                  height: 35,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {},
                    label: Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 52, 115, 241),
                      minimumSize: Size(30, 30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: 135,
                  height: 35,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {},
                    label: Text(
                      'Google',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 241, 54, 37),
                      minimumSize: Size(10, 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 6.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Create by 6319C10030',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
