import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  final List<Map<String, String>> galleryItems = const [
    {
      "url": "https://i.imgur.com/fC7z17v.png",
      "description": "박슬우 증명사진"
    },
    {
      "url": "https://i.imgur.com/UQo7fOv.png",
      "description": "박슬우 어릴때"
    },
    {
      "url": "https://i.imgur.com/DJ7b4PC.png",
      "description": "창원남고 STEAM 전국 대회"
    },
    {
      "url": "https://i.imgur.com/C1jurry.png",
      "description": "서울과학기술대학교 합격"
    },
    {
      "url": "https://i.imgur.com/nBJs335.png",
      "description": "2015년 2월 상경"
    },
    {
      "url": "https://i.imgur.com/dwq05MN.png",
      "description": "auto piano 아트메가로 제작"
    },
    {
      "url": "https://i.imgur.com/peHT8M2.png",
      "description": "trafficjam2 java로 제작"
    },
    {
      "url": "https://i.imgur.com/0cL2ce4.png",
      "description": "차세대미디어론 스마트신호등 (박슬우, 허수진, 정희연, 천용신, 허재영)"
    },
    {
      "url": "https://i.imgur.com/n7necwm.png",
      "description": "서울과학기술대학교 졸업"
    },
    {
      "url": "https://i.imgur.com/hWrv8Sq.png",
      "description": "KATUSA - 용산 헌병으로 입대"
    },
    {
      "url": "https://i.imgur.com/xkVmU5Q.png",
      "description": "HMMWV"
    },
    {
      "url": "https://i.imgur.com/Y0PiOaJ.png",
      "description": "Sgt Figuerra"
    },
    {
      "url": "https://i.imgur.com/K9k0gAH.png",
      "description": "Pvt Agosto"
    },
    {
      "url": "https://i.imgur.com/UpspCMt.png",
      "description": "후임 배현우, Agosto"
    },
    {
      "url": "https://i.imgur.com/vYkvveT.png",
      "description": "Almanza"
    },
    {
      "url": "https://i.imgur.com/y50jA3u.png",
      "description": "JJ Fierce"
    },
    {
      "url": "https://i.imgur.com/NuOAu3G.png",
      "description": "Hiney - ETDed"
    },
    {
      "url": "https://i.imgur.com/eCA4Cpa.png",
      "description": "My M4A1"
    },
    {
      "url": "https://i.imgur.com/Zta1dQg.png",
      "description": "My M9"
    },
    {
      "url": "https://i.imgur.com/uVo5pcu.png",
      "description": "맨날 총기수입"
    },
    {
      "url": "https://i.imgur.com/TewlL4j.png",
      "description": "맨날 총기수입2"
    },
    {
      "url": "https://i.imgur.com/xRD3dRo.jpeg",
      "description": "부보직 - 전투병"
    },
    {
      "url": "https://i.imgur.com/wuZyT0w.png",
      "description": "신고받고 잡혀온 북한사람이 갖고있던것"
    },
    {
      "url": "https://i.imgur.com/WJlHOzd.png",
      "description": "친구 윤혁이 3렙조끼"
    },
    {
      "url": "https://i.imgur.com/PevBXLc.png",
      "description": "전역 - 동기 대희 형과"
    },
    {
      "url": "https://i.imgur.com/sekvQtJ.png",
      "description": "2021 태화이노베이션 테블릿 소프트웨어 개발 (농협 납품)"
    },
    {
      "url": "https://i.imgur.com/zWyoSOb.png",
      "description": "좋은 회사 태화이노베이션"
    },
    {
      "url": "https://i.imgur.com/7Mox4Q1.png",
      "description": "2022 태화 이노베이션 퇴사 (돈을 많이 벌어야 해서)"
    },
    {
      "url": "https://i.imgur.com/JYUaxtl.png",
      "description": "BITGET 2023 발리 출장"
    },
    {
      "url": "https://i.imgur.com/8HWVKOu.png",
      "description": "BITGET 2023 발리 출장 2"
    },
    {
      "url": "https://i.imgur.com/RcIf80O.png",
      "description": "BITGET 2023 발리 출장 3"
    },
    {
      "url": "https://i.imgur.com/ke41S5N.png",
      "description": "BITGET WDF 2023 출장"
    },
    {
      "url": "https://i.imgur.com/5Shgggo.png",
      "description": "프리다이빙 의외의 재능 발견"
    },
    {
      "url": "https://i.imgur.com/bjNwqy2.png",
      "description": "CMAS 국제 심판관 자격 취득"
    },
    {
      "url": "https://i.imgur.com/Yx94wmL.png",
      "description": "FPV 드론 연습 - 사이판"
    },
    {
      "url": "https://i.imgur.com/3ctGNMR.png",
      "description": "플러터 앱 - 애벌레노트 제작"
    },
    {
      "url": "https://i.imgur.com/nb6U3lc.png",
      "description": "안동장씨 이천백파 남해종친회 온라인족보"
    },
    {
      "url": "https://i.imgur.com/oLamvh8.png",
      "description": "플러터 웹 - 카렌트 스타트업 홈페이지 제작"
    },
    {
      "url": "https://i.imgur.com/Q6L1FMP.png",
      "description": "자동 매매 프로그램 crypto hunter 제작"
    },
    {
      "url": "https://i.imgur.com/bFL4lAQ.png",
      "description": "deepseek r1 14b 로컬 구현"
    },
    {
      "url": "https://i.imgur.com/9lhAKW5.png",
      "description": "L to L GPT vs Gemini 토론 프로그램"
    },
    {
      "url": "https://i.imgur.com/nCP8gg8.png",
      "description": "써포츠 앱 프론트 일부 제작(외주)"
    },
    {
      "url": "https://i.imgur.com/oxUXNu3.png",
      "description": "작품 - 1종보통따기싫어 1"
    },
    {
      "url": "https://i.imgur.com/V691q2r.png",
      "description": "작품 - 1종보통따기싫어 2"
    },
    {
      "url": "https://i.imgur.com/2scVfw0.png",
      "description": "작품 - 1종보통따기싫어 3"
    },
    {
      "url": "https://i.imgur.com/18Na0Fk.png",
      "description": "작품 - 박주영"
    },
    {
      "url": "https://i.imgur.com/X1UYSLX.png",
      "description": "작품 - 이은지"
    },
    {
      "url": "https://i.imgur.com/ks5wtdT.png",
      "description": "작품 - 개"
    },
    {
      "url": "https://i.imgur.com/09NKfTJ.png",
      "description": "작품 - 사람"
    },
    {
      "url": "https://i.imgur.com/XgQ993K.png",
      "description": "작품 - 악몽"
    },
    {
      "url": "https://i.imgur.com/wr054EB.png",
      "description": "작품 - 파리"
    },
    {
      "url": "https://i.imgur.com/TLHsyfV.png",
      "description": "작품 - 친구 고양이"
    },
    {
      "url": "https://i.imgur.com/s3SDf9E.png",
      "description": "작품 - 낙서"
    },
    {
      "url": "https://i.imgur.com/Gr1u7Qq.png",
      "description": "작품 - 죄를 사하다"
    },
    {
      "url": "https://i.imgur.com/DQ3hB8F.png",
      "description": "알만자가 팔에 그려달라고 함"
    },
    {
      "url": "https://i.imgur.com/MrMSVCz.png",
      "description": "여행 - 도쿄"
    },
    {
      "url": "https://i.imgur.com/U4CW5JL.png",
      "description": "여행 - 두바이"
    },
    {
      "url": "https://i.imgur.com/jghoKP8.png",
      "description": "여행 - 몰디브"
    },
    {
      "url": "https://i.imgur.com/DBiOCwH.png",
      "description": "여행 - 파타야와 방콕"
    },
    {
      "url": "https://i.imgur.com/BVBY7e1.png",
      "description": "여행 - 푸꼭(베트남)"
    },
    {
      "url": "https://i.imgur.com/4bfKfVx.png",
      "description": "여행 - 보라카이"
    },
    {
      "url": "https://i.imgur.com/2zkYc9F.png",
      "description": "여행 인솔 - 보홀"
    },
    {
      "url": "https://i.imgur.com/uUh8Ug7.png",
      "description": "여행 - 사이판과 마나가하"
    },
    {
      "url": "https://i.imgur.com/ag90B1v.png",
      "description": "여행 - 사이판, @Danniver"
    },
    {
      "url": "https://i.imgur.com/X8BuEXy.png",
      "description": "세부 - 강사자격 취득하러"
    },
    {
      "url": "https://i.imgur.com/3JZGBG3.png",
      "description": "여행 인솔 - 세부"
    },
    {
      "url": "https://i.imgur.com/8uLcHCH.png",
      "description": "여행 - 오사카"
    },
    {
      "url": "https://i.imgur.com/G6Oor7v.png",
      "description": "여행 - 오키나와"
    },
    {
      "url": "https://i.imgur.com/0WhBPzn.png",
      "description": "여행 - 장가계"
    },
    {
      "url": "https://i.imgur.com/UuS4V5t.png",
      "description": "여행 - 쿠마모토"
    },
    {
      "url": "https://i.imgur.com/5lBCPAv.png",
      "description": "여행 - 후쿠오카"
    },
    {
      "url": "https://i.imgur.com/9sPOTAe.png",
      "description": "여행 - 훗카이도"
    },
    {
      "url": "https://i.imgur.com/OOoVMNK.png",
      "description": "각종 수중자격들"
    },
    {
      "url": "https://i.imgur.com/OMFaTqR.png",
      "description": "병적증명서"
    },
    {
      "url": "https://i.imgur.com/dbbgRWS.png",
      "description": "최근 오픽"
    },
    {
      "url": "https://i.imgur.com/oERT7xg.png",
      "description": "졸업증명서"
    },
    {
      "url": "https://i.imgur.com/Ug9UdIt.png",
      "description": "어드밴스드 프리다이버 강사"
    },
    {
      "url": "https://i.imgur.com/qpCviqY.png",
      "description": "BLSD 강사 자격"
    },
    {
      "url": "https://i.imgur.com/6koByeg.png",
      "description": "해당 포트폴리오 페이지는 FLUTTER 웹앱 입니다! :)"
    },
    {
      "url": "https://i.imgur.com/iw7lXVi.png",
      "description": "처음부터 끝까지 레퍼런스없이 직접 제작하였습니다! :)"
    }
  ];

  void showFullScreenImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      barrierColor: Colors.black87,
      builder: (_) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.black,
          child: InteractiveViewer(
            child: Center(
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = (constraints.maxWidth / 280).floor().clamp(1, 4);

          return GridView.builder(
            shrinkWrap: true, // ✅ 필수
            physics: const NeverScrollableScrollPhysics(), // ✅ 필수
            itemCount: galleryItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final item = galleryItems[index];
              return GestureDetector(
                onTap: () => showFullScreenImage(context, item['url']!),
                child: Card(
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                          child: Image.network(
                            item['url']!,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => const Icon(Icons.broken_image, color: Colors.white38),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item['description']!,
                          style: const TextStyle(color: Colors.white70, fontSize: 13),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

}
