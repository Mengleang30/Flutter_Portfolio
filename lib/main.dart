import 'package:flutter/material.dart';

import 'package:my_portfolio/footer.dart';
import 'package:url_launcher/url_launcher.dart'
    show canLaunch, canLaunchUrl, launch, launchUrl;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Welcome to my portfolio",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          foregroundColor: Colors.white70,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40, bottom: 10),
                child: Image.asset(
                  'assets/images.jpg',
                  width: 250,
                  height: 250,
                ),
              ),
              const Text(
                "Hi, I am Mengleang ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 43, 159, 253),
                      Colors.green,
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  "Web Developer ",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'I’m a web developer with expertise in React.js, Vue.js, and Laravel. I enjoy building dynamic, user-friendly web applications and have experience developing both frontend and backend solutions. With a strong foundation in modern JavaScript frameworks and PHP, I create seamless and efficient applications that enhance user experience.',
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _launchURL('https://www.google.com');
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                ),

                child: Text(
                  'Download Resume',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 53, 52, 52),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 5,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          offset: Offset(0, 3), // Shadow position
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        const Text(
                          'Front-end Skills',
                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 4, 4),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Frontend Frameworks: React.js, Vue.jsState Management: Context API, Pinia.Routing: React Router, Vue RouterStyling: Tailwind CSS, Bootstrap',
                          style: TextStyle(
                            color: Color.fromARGB(255, 65, 64, 64),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 53, 52, 52),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 5,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          offset: Offset(0, 3), // Shadow position
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        const Text(
                          'Back-end Skills',

                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 4, 4),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Backend Framworks : Laravel (PHP), NestJS (Node.js)Database: MySQLAPI Development: RESTful APIs, Laravel.Docker (docker-compose), Git.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 65, 64, 64),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Footer Section
                  Footer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch $url';
    }
  }
}
