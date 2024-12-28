import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pelix/core/colors/colors.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    _SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => SizedBox(
            height: 25,
          ),
          itemCount: _widgetList.length,
        ));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    'https://image.tmdb.org/t/p/w300_and_h450_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
    'https://image.tmdb.org/t/p/w300_and_h450_bestv2/b2YL2kncIqlcDcqly78AsOPJi6r.jpg',
    'https://image.tmdb.org/t/p/w300_and_h450_bestv2/1KyJfmgCo2dUywUxpk6bGMZbyeZ.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhite,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We' ll fownload a personalised selection of\n movies and shows for you  so there's\n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: EdgeInsets.only(
                  left: 170,
                ),
                angle: 26,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: EdgeInsets.only(
                    right: 170,
                  ),
                  angle: -21,
                  size: Size(size.width * 0.35, size.width * 0.55)),
              DownloadsImageWidget(
                  radius: 10,
                  imageList: imageList[0],
                  margin: EdgeInsets.only(bottom: 10),
                  size: Size(size.width * 0.4, size.width * 0.6)),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorOrange,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Set up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              "See What You Can Download",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: kWhite,
        ),
        kWidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
