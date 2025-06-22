import 'package:flutter/material.dart';

void main() {
  runApp(const TodayEventsApp());
}

class TodayEventsApp extends StatelessWidget {
  const TodayEventsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Today Events',
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF2E2E2E), // 다크 그레이 배경색
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onZoneTap(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  void _showCardDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF3B2F2F), // 다크 브라운 배경
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // 둥근 모서리
          ),
          contentPadding: const EdgeInsets.all(16.0), // 내부 여백
          content: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.7, // 최대 높이 제한
            ),
            child: SingleChildScrollView( // 스크롤 가능
              child: Column(
                mainAxisSize: MainAxisSize.min, // 내용에 맞게 크기 조절
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 상단 아이콘 및 버튼
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRoundedButton(
                        text: '출처',
                        backgroundColor: const Color(0xFF4A3A3A),
                        textColor: Colors.white,
                      ),
                      Row(
                        children: [
                          _buildCircularButton(icon: Icons.bookmark_border),
                          const SizedBox(width: 8),
                          _buildCircularButton(icon: Icons.share),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // 날짜, 분야, 기타 버튼
                  Row(
                    children: [
                      _buildRoundedButton(
                        text: '날짜',
                        backgroundColor: const Color(0xFF4A3A3A),
                        textColor: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      _buildRoundedButton(
                        text: '분야',
                        backgroundColor: const Color(0xFF4A3A3A),
                        textColor: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      _buildRoundedButton(
                        text: '기타',
                        backgroundColor: const Color(0xFF4A3A3A),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // 메인 이미지 및 서브 이미지 구역 (팝업창)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: ClipRRect( // 이미지 둥근 모서리
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/image/worldcup.png', // 팝업창 메인 이미지
                            fit: BoxFit.cover,
                            height: 250, // 이미지 높이
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: List.generate(4, (index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: index == 3 ? 0 : 8),
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4A3A3A),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  '서브\n이미지\n구역',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // 사건 제목 (팝업창)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A3A3A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      '2002 월드컵 4강 진출', // 팝업창 제목
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 사건 상세 설명 (팝업창)
                  Container(
                    height: 300,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A3A3A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      '2002년 FIFA 월드컵은 대한민국과 일본에서 공동 개최되었으며, '
                          '대한민국 축구 국가대표팀이 거스 히딩크 감독의 지휘 아래 4강에 진출하는 기적적인 성과를 이루었습니다.'
                          '\n\n이 대회는 대한민국 축구 역사상 가장 위대한 순간 중 하나로 기록되고 있으며, '
                          '전 국민을 하나로 묶는 뜨거운 응원의 열기를 보여주었습니다.',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                '닫기',
                style: TextStyle(color: Color(0xFFE0E0E0), fontSize: 16),
              ),
            ),
          ],
          actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        );
      },
    );
  }

  // 둥근 모서리 버튼 위젯
  Widget _buildRoundedButton({
    required String text,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20), // 둥근 모서리
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 14),
      ),
    );
  }

  // 원형 아이콘 버튼 위젯
  Widget _buildCircularButton({required IconData icon}) {
    return Container(
      width: 45, // 크기
      height: 45, // 크기
      decoration: BoxDecoration(
        color: const Color(0xFF4A3A3A), // 배경색
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 24),
    );
  }

  Widget _buildCard({required Widget child, double? height, required Color color}) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: _showCardDialog, // 팝업창 표시
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 16.0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(spacing),
          child: Column(
            children: [
              // 1x2 카드 (메인 화면)
              _buildCard(
                height: 160,
                color: const Color(0xFF3B2F2F), // 다크 브라운 배경
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect( // 이미지 둥근 모서리
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/image/worldcup.png', // 메인 화면 카드 이미지
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: spacing),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          SizedBox(
                            height: 40,
                            child: Center(
                              child: Text(
                                '2002 월드컵 4강 진출', // 메인 화면 카드 제목
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            child: Center(
                              child: Text('2002 FIFA 월드컵에서 대한민국 축구 국가대표팀이 4강에 진출하였습니다.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: spacing),

              // 1x1 카드 2개
              Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      height: 160,
                      color: const Color(0xFF4A3A3A), // 그레이 배경
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          SizedBox(
                            height: 60,
                            child: Center(
                              child: Text('이미지',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            height: 24,
                            child: Center(
                              child: Text('제목',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                          SizedBox(height: 8),
                          Expanded(
                            child: Center(
                              child: Text('간단 설명',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: spacing),
                  Expanded(
                    child: _buildCard(
                      height: 160,
                      color: const Color(0xFF3B2F2F),
                      child: const Center(
                        child: Text('이미지',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // 하단 내비게이션 바
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: spacing),
                child: Row(
                  children: List.generate(2, (idx) {
                    final isSelected = _selectedIndex == idx;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () => _onZoneTap(idx),
                        child: Container(
                          height: 56,
                          margin: EdgeInsets.only(left: idx == 0 ? 0 : spacing),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFFE0E0E0)
                                : const Color(0xFFB0B0B0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              idx == 0 ? '홈' : '마이페이지',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}