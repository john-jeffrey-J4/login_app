
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  State<LoginWidget> createState() {
    return _LoginWidgetState();
  }
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginFunction() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();
    if (username.isNotEmpty && password.isNotEmpty) {
      widget.switchScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            'assets/images/Frame.png',
            height: 329,
            width: 210,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextField(
            controller: usernameController,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(),
                hintText: 'Username',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF635C5C),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              hintText: "Password",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                backgroundColor: const Color(0xFFF68326),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: loginFunction,
              child: const Text('Login'),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
          child: Text("For Assistance & Login Details Contact: "),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
          child: RichText(
            text: const TextSpan(
                text: "English, Kannada & Telugu :  ",
                style: TextStyle(
                  color: Colors
                      .black, // Color for the text before the phone number
                ),
                children: [
                  TextSpan(
                    text: '7406333800', // Phone number
                    style: TextStyle(
                      color: Color(0xFFF68326), // Color for the phone number
                      decoration: TextDecoration
                          .underline, // Add underline to the phone number
                    ),
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
          child: RichText(
            text: const TextSpan(
                text: "English, Kannada & Hindi    :  ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "9071386515",
                    style: TextStyle(
                        color: Color(0xFFF68326),
                        decoration: TextDecoration.underline),
                  )
                ]),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 3),
          child: Text("v1.7 © 2023, Codeland Infosolutions Pvt Ltd."),
        )
      ],
    );
  }
}
