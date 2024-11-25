import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_app/components/logo_tile.dart';
import 'package:seo_app/components/my_button.dart';
import 'package:seo_app/components/my_textfield.dart';
import 'package:seo_app/components/square_tile.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Let's Sign Up",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "Increase your SEO power!",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          " Email ",
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  MyTextfield(
                    controller: usernameController,
                    hintText: 'Enter Email ',
                    obscureText: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          " Username ",
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  MyTextfield(
                    controller: usernameController,
                    hintText: 'Enter Username ',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  MyTextfield(
                    controller: passwordController,
                    hintText: 'Enter Password',
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  MyTextfield(
                    controller: passwordController,
                    hintText: 'Enter Password Again',
                    obscureText: true,
                  ),
                  const SizedBox(height: 40),
                  MyButton(
                    onTap: signInUser,
                    hintText: "Sign Up",
                    color: const Color.fromARGB(255, 133, 170, 201),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                        const SizedBox(width: 10),
                        const SquareTile(imagePath: 'lib/images/google.png'),
                        const SizedBox(width: 10),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do have an account? ",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "Login Now",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
