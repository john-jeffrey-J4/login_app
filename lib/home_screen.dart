import 'package:flutter/material.dart';
import 'package:login_app/file_upload_page.dart';
import 'package:login_app/splash_screen.dart';
import 'package:login_app/login_page.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});
  @override
  State<HomePageWidget> createState() {
    return _HomePageWidgetState();
  }
}

class _HomePageWidgetState extends State<HomePageWidget> {
  Widget activeScreen = const SplashWidget();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      loginPageRedirect();
    });
  }

  void loginPageRedirect() {
    setState(() {
      activeScreen = LoginWidget(switchScreen);
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = const FileUploadWidget();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: activeScreen),
    );
  }
}
