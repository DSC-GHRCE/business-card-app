import 'package:business_card_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff00D0C1), Color(0xff005A86)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/Aaliya.jpg'),
                ),
                const SizedBox(
                  height: 34,
                ),
                const Text(
                  'Aaliya Ali',
                  style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      color: Colors.white,
                      fontSize: 30),
                ),
                const Text('FLUTTER DEVELOPER',
                    style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 15,
                        color: Colors.white54,
                        letterSpacing: 1.5,
                        height: 2)),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: ListTile(
                    onTap: () {
                      launchURL('mailto:aaliya@email.com');
                    },
                    leading: const Icon(Icons.mail, color: Color(0xff005A86)),
                    title: const Text(
                      'aaliya@email.com',
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 18,
                        color: Color(0xff363636),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: ListTile(
                    onTap: () {
                      launchURL('https://www.linkedin.com/in/aaliyaali/');
                    },
                    leading: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Color(0xff005A86),
                    ),
                    title: const Text(
                      '@AaliyaAli',
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 18,
                        color: Color(0xff363636),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: ListTile(
                    onTap: () {
                      launchURL('https://www.twitter.com/@AaliyaAli_01');
                    },
                    leading: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Color(0xff005A86),
                    ),
                    title: const Text(
                      '@AaliyaAli_01',
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 18,
                        color: Color(0xff363636),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: ListTile(
                    onTap: () {
                      launchURL('https://www.github.com/Aaliya-Ali/');
                    },
                    leading: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Color(0xff005A86),
                    ),
                    title: const Text(
                      '@Aaliya-Ali',
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 18,
                        color: Color(0xff363636),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
