import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueAccent,
      child: Column(
        children: [
          Text(
            '© 2025 My Portfolio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.facebook, size: 30, color: Colors.white,),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.telegram, size: 30, color: Colors.white,),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.linkedin, size: 30, color: Colors.white,),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.github, size: 30, color: Colors.white,),
              ),
              
            ],
          ),
          // const SizedBox(height: 8),
        ],
      ),
    );
  }
}
