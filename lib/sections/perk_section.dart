import 'package:flutter/material.dart';

class PerkSection extends StatelessWidget {
  const PerkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      width: double.infinity,
      child: Align(
        alignment: Alignment.topLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(32, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 24),
                Text(
                  "Strengths",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  "창의성\n책임감\n능통한 영어",
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  "Stack",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  "C\nC#\nJava\nDart\nReact\nFlutter\nNext.js\nPython\nNode.js\nJavaScript\nTypeScript\nFirebase Auth\nDB의 SQL 및 CRUD",
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
