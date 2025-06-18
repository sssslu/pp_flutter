import 'package:flutter/material.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/projects_section.dart';
import 'sections/hobby_section.dart';
import 'sections/gallery_section.dart';
import 'sections/perk_section.dart';

void main() => runApp(const MaterialApp(home: PortfolioApp(), debugShowCheckedModeBanner: false));

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    AboutSection(),
    PerkSection(),
    ProjectsSection(),
    HobbySection(),
    GallerySection(),
  ];

  final List<String> _tabLabels = ["About Me", "Perks", "Side Projects", "Hobby", "Gallery"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a0a0a),
      body: Column(
        children: [
          const Expanded(child: HeroSection()),
          Container(
            height: 48,
            color: const Color(0xFF000000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_tabLabels.length, (index) {
                final isSelected = _selectedIndex == index;
                return TextButton(
                  onPressed: () => setState(() => _selectedIndex = index),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _tabLabels[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.blueGrey[200],
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                      if (isSelected)
                        const SizedBox(height: 2),
                      if (isSelected)
                        Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Expanded(child: Container(color: const Color(0xFF000000), child: _pages[_selectedIndex])),
          const ContactFooter(),
        ],
      ),
    );
  }
}

class ContactFooter extends StatelessWidget {
  const ContactFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: const [
          Divider(thickness: 1, color: Colors.grey),
          SizedBox(height: 24),
          Text(
            "Contact",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            "slu@kakao.com   /   +821045871127",
            style: TextStyle(color: Colors.blueAccent, fontFamily: "monospace"),
          ),
        ],
      ),
    );
  }
}
