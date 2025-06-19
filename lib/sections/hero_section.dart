import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF0f172a), Colors.black],
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 300, horizontal: 24), // ✅ 넉넉한 상하 여백 추가
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Profile : 박 슬우",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24),
          Text(
            "실전 프로젝트들을 통해 성장하였고,\n"
                "다양한 고객 관리 경험도 있는,\n"
                "깊이 있고 열린 마음의 풀스택 개발자를 꿈꾸는 사람입니다.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
