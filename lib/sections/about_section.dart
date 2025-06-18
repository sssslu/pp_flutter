import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
                Text(
                  "About Me",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  "Education",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  "창원남고등학교 졸업 / 창원남고 단결정 연구 동아리 활동 및 다회 수상\n"
                      "서울과학기술대학교 전자IT미디어공학과 졸업\n"
                      "용산 카투사 Military Police 만기 전역\n"
                      "태화이노베이션 R&D 소프트웨어 연구소 연구원\n"
                      "싱가폴 암호화폐 거래소 Bitget 에서 중요직으로 근무\n"
                      "현재 속세를 떠나 특이점을 기다리는, 방구석 연구자이자 코더로 활동중입니다.",
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 24),
                Text(
                  "Experience",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  "GPT API, Python, 자동화 시스템을 활용해 실제 트레이딩 시스템을 구현하고 운영한 경험이 있습니다.\n"
                      "Flutter와 Android Studio를 이용해 iOS 및 Android용 모바일 앱을 설계하고 배포한 경험이 있습니다.\n"
                      "우리은행 사서 프로그램 Fever 와 농협은행 고속 스캔 프로그램 DASS 를 유지보수한 경험이 있습니다.\n"
                      "한국의 개발 관련 연구소에서 우리은행의 메타버스 지점 구축 등 실험적인 프로젝트에서 활동한 경험이 있습니다.\n"
                      "대형 암호화폐 거래소에서 고액의 연봉을 받고 고객 유치 및 관리 관련 핵심 업무를 수행한 경험이 있습니다.",
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
