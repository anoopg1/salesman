import 'package:flutter/material.dart';
import 'package:salesman_app/constants/constants.dart';
import 'package:salesman_app/ui/home/screen_home.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/lazza_cover.jpg"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "User ID",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(gapPadding: 20),
                ),
              ),
              kheight10,
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(gapPadding: 20),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )),
              ),
              kheight10,
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScreenHome(),
                    ),
                  );
                },
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
