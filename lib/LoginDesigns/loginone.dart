import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      // appBar: AppBar(
      //   title: Text(
      //     "Login",
      //     style: TextStyle(fontSize: 15),
      //   ),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Login", style: TextStyle(fontSize: 25),
            // style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.blue)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Container(
                  width: 430,
                  height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                            color: Colors.purpleAccent, width: 2)),
                    elevation: 15,
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 32),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Name',
                                  prefixIcon: Icon(
                                    Icons.account_circle_outlined,
                                  )),
                            ),
                          ),
                          // SizedBox(height: 1),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                              ),
                              obscureText: true,
                              obscuringCharacter: '*',
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Forgot',
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: ' Password?',
                                    style: const TextStyle(color: Colors.red))
                              ])),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  onPrimary: Colors.white,
                                  fixedSize: const Size(300, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //
      //     children: [
      //       Text(
      //         "Login",
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
