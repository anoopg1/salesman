import 'package:flutter/material.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Colors.purple,
              ),
              child: Column(
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
