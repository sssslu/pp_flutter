import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final ScrollController _scrollController = ScrollController();

  final List<Widget> _pages = const [
    AboutSection(),
    PerkSection(),
    ProjectsSection(),
    HobbySection(),
    GallerySection(),
  ];

  final List<String> _tabLabels = ["저는...", "능력치!", "프로젝트", "취미", "갤러리"];

  void _onTabSelected(int index) {
    setState(() => _selectedIndex = index);
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isGalleryTab = _selectedIndex == 4;

    return Scaffold(
      backgroundColor: const Color(0xFF0a0a0a),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isGalleryTab) const HeroSection(),
            Container(
              height: 48,
              color: const Color(0xFF000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_tabLabels.length, (index) {
                  final isSelected = _selectedIndex == index;
                  return TextButton(
                    onPressed: () => _onTabSelected(index),
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
            Container(
              color: const Color(0xFF000000),
              width: double.infinity,
              child: _pages[_selectedIndex],
            ),
            if (!isGalleryTab) const ContactFooter(),
          ],
        ),
      ),
    );
  }
}

class ContactFooter extends StatelessWidget {
  const ContactFooter({super.key});

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Contact Copied! : $text'),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.grey[800],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Divider(thickness: 1, color: Colors.grey),
          const SizedBox(height: 24),
          const Text(
            "Contact",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => _copyToClipboard(context, "slu@kakao.com"),
            child: const Text(
              "slu@kakao.com",
              style: TextStyle(
                color: Colors.blueAccent,
                fontFamily: "monospace",
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => _copyToClipboard(context, "+821045871127"),
            child: const Text(
              "+821045871127",
              style: TextStyle(
                color: Colors.blueAccent,
                fontFamily: "monospace",
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
