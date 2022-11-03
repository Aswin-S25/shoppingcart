import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/widgets/continue.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        margin: const EdgeInsets.only(top: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "TOKOTO",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.deepOrangeAccent),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome to ",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Text(
                  "TOKOTO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20),
                ),
                Text(
                  ", Let's shop!",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )
              ],
            ),
            Container(
                width: 300,
                height: 400,
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                        itemCount: img.length,
                        itemBuilder: (context, index, realIndex) {
                          final imgs = img[index];
                          return buildImage(image: imgs, index: index);
                        },
                        options: CarouselOptions(
                          height: 300,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          autoPlayInterval: Duration(seconds: 2),
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                        )),
                    const SizedBox(height: 20),
                    buildIndicator(),
                  ],
                )),
            const SizedBox(
              height: 60,
            ),
            const CButton(),
          ],
        ),
      ),
    );
  }

  Widget buildImage({required String image, required int index}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.white,
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: img.length,
        effect: WormEffect(
          dotColor: Colors.orange,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
  int activeIndex = 0;
  final img = [
    "assets/images/splash_1.png",
    "assets/images/splash_2.png",
    "assets/images/splash_3.png",
  ];
}
