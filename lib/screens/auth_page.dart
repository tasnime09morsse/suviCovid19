import 'package:covid/components/login_form.dart';
import 'package:covid/utils/config.dart';
import 'package:covid/utils/text.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    // Build login text field
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("be.jpg",), // Chemin de votre image de fond
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.clear,
            ),
          ),
        ),
        child: SingleChildScrollView( // Utilisation de SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Config.spaceSmall,
                  Center(
                    child: Text(
                      AppText.enText['signIn_text']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Config.spaceSmall,
                  Image.asset(
                    'assets/be.jpg',
                     // Chemin de votre image
                    height: 200, // Ajustez la hauteur selon vos besoins
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  Config.spaceSmall,
                  LoginForm(),
                  Config.spaceSmall,
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        AppText.enText['forgot-password']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
