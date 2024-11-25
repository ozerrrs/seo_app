import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_app/components/logo_tile.dart';
import 'package:seo_app/components/my_button.dart';
import 'package:seo_app/pages/login_page.dart';
import 'package:seo_app/pages/sign_up.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  void signInUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void signUpUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
    // Handle Sign Up logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 0.1),
              const LogoTile(imagePath: 'lib/images/logo.png'),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "It is now easier to move your website to the top! SEOOptimo delivers everything you need to boost your search engine performance with comprehensive SEO analysis tools. An app full of features developed to leave your competitors behind, increase your traffic and stand out in search results!",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: () =>
                    signInUser(context), // Pass context to the function
                hintText: "Sign In",
              ),
              const SizedBox(height: 10),
              MyButton(
                onTap: () => signUpUser(context),
                hintText: "Sign Up",
                color: const Color.fromARGB(255, 133, 170, 201),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
