import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vega_login/login.dart';
import 'package:vega_login/main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, top: 32),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSignUp()),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green[800],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontFamily: 'Shippori',
                        color: Colors.green[800],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 28,
                  fontFamily: 'Shippori',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  labelText: "Email address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green.shade800),
                  ),
                  labelStyle: TextStyle(color: Colors.green.shade800),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: Icon(Icons.remove_red_eye,
                          color: Colors.green.shade800),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green.shade800),
                      ),
                      labelStyle: TextStyle(color: Colors.green.shade800),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirm password",
                  suffixIcon:
                      Icon(Icons.remove_red_eye, color: Colors.green.shade800),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green.shade800),
                  ),
                  labelStyle: TextStyle(color: Colors.green.shade800),
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.green.shade800,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "I agree to the processing of ",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Shippori',
                          color: Colors.green.shade800,
                        ),
                      ),
                      TextSpan(
                        text: "Personal data",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Shippori',
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Center(
                    child: Text(
                      'Sing up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Shippori'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.green.shade800,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Login with',
                      style: TextStyle(
                        color: Colors.green.shade400,
                        fontFamily: 'Shippori',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.green.shade800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/fb.png',
                    height: 60,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/google.png',
                    height: 60,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/apple.png',
                    height: 60,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'If you have account?',
                  style: TextStyle(
                      fontFamily: 'Shippori',
                      fontSize: 15,
                      color: Colors.green.shade400),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Shippori',
                      fontSize: 15,
                    ),
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
