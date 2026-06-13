import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ABanner extends StatefulWidget {
  const ABanner({super.key});

  @override
  State<ABanner> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<ABanner> {
  final PageController _controller = PageController();

  int _currentPage = 0;
  Timer? _timer;

  final List<String> banners = [
    'assets/images/banners/banner_1.jpg',
    'assets/images/banners/banner_2.jpg',
    'assets/images/banners/banner_3.jpg',
    'assets/images/banners/banner_4.jpg',
    'assets/images/banners/banner_5.jpg',
    'assets/images/banners/banner_6.jpg',
    'assets/images/banners/banner_7.jpg',
  ];

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(
      const Duration(seconds: 3),
          (timer) {
        if (!_controller.hasClients) return;

        _currentPage = (_currentPage + 1) % banners.length;

        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              _currentPage = index;
            },
            itemCount: banners.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    banners[index],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 12),

        SmoothPageIndicator(
          controller: _controller,
          count: banners.length,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.red,
            dotColor: Colors.grey.shade300,
            dotHeight: 8,
            dotWidth: 8,
            expansionFactor: 4,
            spacing: 6,
          ),
        ),
      ],
    );
  }
}