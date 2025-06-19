import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "CryptoHunter",
      "안동장씨 남해 종친회",
      "Auto Piano",
      "AI Localization PJ",
      "Trafficjam2",
      "애벌레노트",
      "촉각전달기",
      "KakaoTalt",
      "Supports",
      "L to L",
      "CarRentService",
      "PP"
    ];

    final List<String> descriptions = [
      "실시간 데이터 수집, GPT 전략 판단, 실제 자동 주문 실행까지 연동한 시스템. 로그 기록 및 리스크 관리 기능 포함. 결론부터 말하자면, 부자가 되진 못했다.",
      "남해의 안동 장씨 계보도를 재귀함수와 NONSQL-DB, 그리고 NodeJS 를 이용해 한눈에 볼 수 있도록 설계한 온라인 족보 프로그램. 족보를 트리 형태로 구현한 최초의 웹앱",
      "ArtMega Microprocessor 와 C언어를 이용해 만든 반응속도 높은 피아노. 컴퓨터와 연결하면 Putty 입력을 통해 키보드로 연주 가능.",
      "ollama 와 Deepseek 오픈소스, 그리고 RTX 4080 SUPER GPU로 Deepseek 8b/14b를 로컬로 구현.",
      "객체 지향형 언어인 Java 로 자동차 객체를 섬세하게 구현하고 콘솔로 교통 체증이 발생하는 이유를 가시화한 실험적 시뮬레이터.",
      "Flutter 로 구현한 아이젠하워 매트릭스 기반의 메모/체크리스트 앱. 에버노트의 복잡함을 비판하며 설계. (부모님도 사용합니다)",
      "아두이노, 그리고 여러 개의 전선과... 모터들을 이용하여 그리드를 생성하여, 입력 단의 촉각을 사용자에게 비슷한 형태로 전달해줄 수 있었던 프로젝트. 당시에는 나름 혁신적이었다...",
      "Flutter 로 구현한 코로나 카카오톡 백신패스 인증 우회 앱. 단순한 구조의 눈속임 앱이다.",
      "운동 플랫폼 모바일 어플리케이션 써포츠의 프론트엔드를 일부 설계 및 제작했다. Firebase Auth를 사용한 소셜 로그인 구현부를 맡았다.",
      "LLM to LLM 토론 시스템. Chat GPT 와 Gemini 둘이서 매일 다른 주제로 토론한다. 두 회사의 API 를 이용하였다. 흥미로운 토론 내용을 열람 가능하다.",
      "랜트카 업장을 위한 간단한 프로젝트. 외국인들을 대상으로 서비스하도록 만든 플러터 기반의 웹 어플리케이션이다.",
      "Project Portfolio. 지금 보고 계신 플러터 기반의 정적 웹 서비스 입니다 ^^"
    ];

    return Container(
      color: const Color(0xFF000000),
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = (constraints.maxWidth / 300).floor().clamp(1, 4);
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: titles.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1.9,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) => ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 320),
              child: Card(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titles[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        descriptions[index],
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
