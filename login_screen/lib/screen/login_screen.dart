import 'dart:ffi';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
            child: Image.asset(
          "asset/phi_hanh_gia.webp",
          fit: BoxFit.fill,
        )),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 25),
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 30, top: 13, bottom: 13),
                    filled: true,
                    fillColor: Colors.black45,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    hintText: 'Email'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 50),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 30, top: 13, bottom: 13),
                      //hoverColor: Colors.amber,
                      filled: true,
                      fillColor: Colors.black45,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                      hintText: 'Password'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 206, 213, 218)),
                        borderRadius: BorderRadius.circular(15)),

                    //backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign In with Facebook",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have An Account? ",
                    style: TextStyle(color: Color.fromARGB(217, 236, 228, 228)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
