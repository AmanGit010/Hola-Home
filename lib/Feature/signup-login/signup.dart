import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 125, top: 30),
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Create your\n",
                            style: TextStyle(
                                fontFamily: 'PoppinsBold',
                                fontSize: 35,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: "Account",
                            style: TextStyle(
                                fontFamily: 'PoppinsBold',
                                fontSize: 35,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: const Color(0xfff7f8fa),
                        filled: true,
                        label: const Text('Email'),
                        labelStyle: const TextStyle(
                            fontFamily: 'PoppinsReg',
                            fontSize: 20,
                            color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: const BorderSide(
                                color: AppColors.yellow, width: 2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: const BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0xfff7f8fa),
                        filled: true,
                        focusColor: Colors.red,
                        label: const Text('Password'),
                        labelStyle: const TextStyle(
                          fontFamily: 'PoppinsReg',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(13),
                        // borderSide: BorderSide(color: Colors.red)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: const BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: const BorderSide(
                                color: AppColors.yellow, width: 2)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignupLogin()),
                      // );
                    },
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        alignment: Alignment.center,
                        width: 320,
                        height: 55,
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'PoppinsBold', fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sign Up"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
