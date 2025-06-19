import 'package:flutter/material.dart';

class HobbySection extends StatelessWidget {
  const HobbySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(32, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 16),
            Text("프리다이빙 (강사 및 국제 심판 자격 보유)",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 8),
            Text(
              "2022년 경 자신의 한계에 도전하는 스포츠, 프리다이빙에 입문하게 되어,\n"
              "SNSI Indoor Freediver, Freediver, Advanced Freediver, Deep Freediver 를 순차적으로 취득.\n"
              "이후 Freediver Instructor, Advanced Freediver Instructor 강사 자격을 취득하였으며,\n"
              "프리다이빙 센터 Onedive 의 소속 강사로 활동하며 100명 이상의 한국인 및 외국인 수강생에게 자격을 부여함.\n"
              "BLSD First Aid, EFR Life Savior 등 인명 구조 관련 자격 보유.\nCMAS 국제핀수영협회 심판관 자격(JUDGE 3급)\n2026 KUA 국가대표선발전 수중심판으로 활동하였음.\n",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 24),
            Text("FPV 드론 촬영 & 영상 편집",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 8),
            Text(
              "일인칭 시점 드론을 운용할 수 있으며, 간단한 촬영 및 영상 편집도 가능.\n"
                  "해외 드론 촬영 경험 다수.",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 24),
            Text("그림 및 아트웍, 디자인",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 8),
            Text(
              "예술적인 감각이 있습니다. (본인 주장, 경력 없음)",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}