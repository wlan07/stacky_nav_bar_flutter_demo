import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text.rich(
          TextSpan(text: "Made with ❤️ by ", children: [
            TextSpan(
                text: "@wlan07",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ))
          ]),
          style: TextStyle(
              color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
