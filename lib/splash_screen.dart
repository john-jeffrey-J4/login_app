import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF68326),
      ),
      child: Center(
        child: Container(
          height: 320,
          width: 224,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(63),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 7,
                    spreadRadius: 3,
                    offset: const Offset(0.0, 5) // changes position of shadow
                    ),
              ]),
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              Image.asset(
                "assets/images/codeland_logo.png",
                height: 180,
                width: 180,
              ),
              Image.asset(
                "assets/images/codeland_logo_2.png",
                width: 144,
                height: 91,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
