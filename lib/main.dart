import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String urlInsta = 'https://www.instagram.com/a_world_asunder/';
  String urlLinkedIn = 'https://www.linkedin.com/in/AruneshKumarPrasad/';
  String urlGitHub = 'https://github.com/AruneshKumarPrasad';

  void _launchURLMail() async =>
      await launch('mailto:aruneshkumarprasad@gmail.com');

  void _launchURLInsta() async =>
      await launch(urlInsta);

  void _launchURLLinkedIn() async =>
      await launch(urlLinkedIn);

  void _launchURLGitHub() async =>
      await launch(urlGitHub);

  @override
  Widget build(BuildContext context) {
    Size sizeOfScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GestureDetector(
        onTap: (){
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: sizeOfScreen.height * 0.3,
                width: sizeOfScreen.width,
                padding: const EdgeInsets.only(top: 30),
                color: Colors.blue[800],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: TextButton.icon(
                                      onPressed: _launchURLMail,
                                      label: const Text('E - Mail',style: TextStyle(color: Colors.blueGrey),),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape:RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      icon: const FaIcon(FontAwesomeIcons.envelopeOpenText,color: Colors.red)
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: TextButton.icon(
                                      onPressed: _launchURLInsta,
                                      label: const Text('Instagram',style: TextStyle(color: Colors.blueGrey),),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape:RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      icon: const FaIcon(FontAwesomeIcons.instagram,color: Colors.pink,)
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: TextButton.icon(
                                      onPressed: _launchURLLinkedIn,
                                      label: const Text('LinkedIn',style: TextStyle(color: Colors.blueGrey),),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape:RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      icon: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue[600],)
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: TextButton.icon(
                                      onPressed: _launchURLGitHub,
                                      label: const Text('GitHub',style: TextStyle(color: Colors.blueGrey),),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape:RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      icon: const FaIcon(FontAwesomeIcons.github,color: Colors.orange,)
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            color: Colors.blue[800],
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: const [
                                Text(
                                  'Less',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                ),
                                FittedBox(fit: BoxFit.fitHeight,child: Icon(Icons.keyboard_arrow_down,color: Colors.white,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          color: Colors.blue[800],
          height: sizeOfScreen.height * 0.09,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: const [
              Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.white,),
              Text(
                'More',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: sizeOfScreen.height * 0.57,
                margin: const EdgeInsets.all(30),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(1.0, 3,),
                        colors: [
                          Colors.transparent,
                          Colors.red,
                          Colors.red,
                          Colors.transparent,
                        ],
                        stops: [
                          0.2,
                          0.2,
                          0.3,
                          0.3
                        ],
                      )
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: sizeOfScreen.height * 0.6,
                  margin: const EdgeInsets.all(30),
                  child: Image.asset('assets/images/ProfilePic.png',fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: sizeOfScreen.height * 0.18,
                ),
              ),
              Positioned(
                bottom: 0,
                left: sizeOfScreen.width * 0.1,
                child: Container(
                  height: sizeOfScreen.height * 0.3,
                  width: sizeOfScreen.width * 0.7,
                  margin: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, -2),
                        end: Alignment(1.0, 4),
                        colors: [
                          Colors.transparent,
                          Colors.lightBlueAccent,
                          Colors.lightBlueAccent,
                          Colors.transparent,
                        ],
                        stops: [
                          0.3,
                          0.3,
                          0.425,
                          0.425
                        ],
                      )
                  ),
                ),
              ),
            ],
          ),
          Column(
            children:  [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const Divider(),
              ),
              const Text(
                "Arunesh Kumar Prasad",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800],
                            letterSpacing: 1
                        ),
                      ),
                      Text(
                        'Developer',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow[700],
                            letterSpacing: 1.3
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeOfScreen.height * 0.18,
                    width: sizeOfScreen.width * 0.4,
                    child: Image.asset('assets/images/AddOn.png',fit: BoxFit.fitHeight,alignment: Alignment.center,),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

