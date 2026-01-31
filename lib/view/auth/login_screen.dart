import 'package:flutter/material.dart';
import 'package:shop_app/utils/applabel.dart';

import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = "panha168@gmail.com";
  String password = "abc@123";

  Future<void> Login() async {
    if (email == emailControler.text && password == passwordController.text) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Login successful')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login error please check again')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 15, right: 15),
        child: Column(
          children: [
            /// bloc logo shop app
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/ac/4a/2d/ac4a2d1218c9a5d3e87840a654cf2d8c.jpg",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: .5,
                        color: Colors.grey.withValues(alpha: 0.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            AppLabel(
              text: "Welcome! Back",
              fontSize: 20,
              fontWeight: FontWeight.w900,
              colors: Colors.black,
            ),
            AppLabel(
              text: "Ready to find something special",
              fontSize: 16,
              fontWeight: FontWeight.w300,
              colors: Colors.black38,
            ),
            SizedBox(height: 10),

            /// text field email
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: AppLabel(text: "Email Address", fontSize: 14),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: emailControler,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter email address",
                  border: InputBorder.none,
                ),
              ),
            ),

            /// text field password
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: AppLabel(text: "Password", fontSize: 14),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.keyboard_alt),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter password",
                  border: InputBorder.none,
                ),
              ),
            ),

            /// bloc forgot password?
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: AppLabel(
                    text: "forgot password?",
                    fontSize: 14,
                    colors: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Login();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: .6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AppLabel(
                  text: "Login",
                  fontSize: 20,
                  colors: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLabel(
                  text: "Don't have an account?",
                  fontSize: 16,
                  colors: Colors.grey,
                ),
                AppLabel(
                  text: " SignUp",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  colors: Colors.red.withValues(alpha: 0.7),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 1, width: 120, color: Colors.black26),
                AppLabel(text: "OR CONTINUE", fontSize: 14),
                Container(height: 1, width: 120, color: Colors.black26),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apple, size: 35),
                      AppLabel(text: "Apple", fontSize: 16),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apple, size: 35),
                      AppLabel(text: "Apple", fontSize: 16),
                    ],
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
