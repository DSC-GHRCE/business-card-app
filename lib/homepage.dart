import 'package:business_card/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.35), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            CircleAvatar(
              radius: 72.5,
              backgroundColor: Colors.deepOrange[400],
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/pc3.png'),
              ),
            ),
            const SizedBox(height: 34),
            const Text(
              'Sudhanshu Sonare',
              style: TextStyle(
                  fontFamily: 'Montserrat-SemiBold',
                  color: Colors.white,
                  fontSize: 30),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Montserrat-SemiBold',
                  color: Colors.deepOrange[400],
                  //color: Colors.white54,
                  letterSpacing: 1.5,
                  fontSize: 15,
                  height: 2),
            ),
            const SizedBox(height: 10),
            const SizedBox(
                width: 155, child: Divider(thickness: 1, color: Colors.white)),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 152,
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: ListTile(
                      onTap: () {
                        launchURL('tel:7058861389');
                      },
                      leading: const Icon(
                        Icons.call,
                        color: Color(0xffEC5800),
                        size: 30,
                      ),
                      title: const Text(
                        'Call',
                        style: TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            fontSize: 18,
                            color: Color(0xff262626)
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 152,
                  margin: const EdgeInsets.only(bottom: 21),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Center(
                    child: ListTile(
                      onTap: () {
                        launchURL('whatsapp://send?phone=+917058861389');
                      },
                      leading: const FaIcon(FontAwesomeIcons.whatsapp,
                          size: 30, color: Color(0xffEC5800)),
                      title: const Text(
                        'Chat',
                        style: TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            fontSize: 18,
                            color: Color(0xff262626)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: ListTile(
                onTap: () {
                  launchURL('mailto:sr.sonare30@gmail.com');
                },
                leading: const Icon(Icons.mail, color: Color(0xffEC5800), size: 30,),
                title: const Text(
                  'sr.sonare30@gmail.com',
                  style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 18,
                      color: Color(0xff363636)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: ListTile(
                onTap: () {
                  launchURL('https://github.com/Sudhanshu3010');
                },
                leading: const FaIcon(FontAwesomeIcons.github,size: 30,
                    color: Color(0xffEC5800)),
                title: const Text(
                  '@Sudhanshu3010',
                  style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 18,
                      color: Color(0xff363636)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(width: 100, child: Divider(thickness: 1, color: Colors.white)),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(7),
              margin: const EdgeInsets.only(bottom: 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.deepOrange,
                    blurRadius: 7.0, // soften the shadow
                    spreadRadius: 0.5, //extend the shadow
                    offset: Offset(
                      1, // Move to right 10  horizontally
                      1,
                    ),
                  ),
                ],
              ),
              child: const Text(
                'Connect with me',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: GestureDetector(
                    onTap: () {
                      launchURL(
                          'https://www.facebook.com/profile.php?id=100009740112400');
                    },
                    child: const FaIcon(FontAwesomeIcons.facebookF,
                        color: Color(0xffEC5800), size: 35),
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: GestureDetector(
                    onTap: () {
                      launchURL('https://twitter.com/Sudhanshu_3010');
                    },
                    child: const FaIcon(FontAwesomeIcons.twitter,
                        color: Color(0xffEC5800), size: 35),
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: GestureDetector(
                    onTap: () {
                      launchURL('https://instagram.com/sudhanshu_sonare/');
                    },
                    child: const FaIcon(FontAwesomeIcons.instagram,
                        color: Color(0xffEC5800), size: 35),
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: GestureDetector(
                    onTap: () {
                      launchURL(
                          'https://www.linkedin.com/in/sudhanshu-sonare-a12602219/');
                    },
                    child: const FaIcon(FontAwesomeIcons.linkedin,
                        color: Color(0xffEC5800), size: 35),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
