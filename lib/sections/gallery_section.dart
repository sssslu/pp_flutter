import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      width: double.infinity,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            "아직 업로드된 이미지가 없습니다.\n추후 프로젝트 이미지 및 스크린샷이 여기에 표시됩니다.",
            style: TextStyle(fontSize: 16, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
