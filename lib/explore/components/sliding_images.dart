import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MyCanvas extends StatelessWidget {
  const MyCanvas({
    Key? key,
    required this.canvasImg1Asset,
    required this.canvasImg2Asset,
    required this.canvasImg3Asset,
  }) : super(key: key);

  final String canvasImg1Asset;
  final String canvasImg2Asset;
  final String canvasImg3Asset;

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 200,
      initialPage: 0,
      indicatorColor: Colors.transparent,
      indicatorBackgroundColor: Colors.transparent,
      autoPlayInterval: 7000,
      isLoop: true,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF292929), width: 2),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              canvasImg1Asset,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF292929), width: 2),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              canvasImg2Asset,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF292929), width: 2),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              canvasImg3Asset,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}