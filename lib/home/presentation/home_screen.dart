import 'package:artist_app/core/theme/app_theme.dart';
import 'package:artist_app/core/widgets/product_tiles.dart';
import 'package:artist_app/helpers/cached_image_helper.dart';
import 'package:artist_app/home/domain/product_data.dart';
import 'package:artist_app/home/domain/silder_images.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // crossAxisAlignment: CrossAxisAlignment.center,
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  items: sliderImages
                      .map(
                        (imageUrl) => Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            // color: Colors.red,s
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: cachedImage(imageUrl),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    onPageChanged: (page, _) {
                      setState(() {
                        _currentImage = page;
                      });
                    },
                    pageSnapping: true,
                    height: 300,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: false,
                  ),
                ),
                Positioned(
                  top: 280,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      sliderImages.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 6,
                        width: _currentImage == index ? 16 : 6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ...List.generate(
                categoryWiseProducts.length,
                (index) => CategoryProductTile(
                      category: categoryWiseProducts[index],
                    ))
          ],
        ),
      ),
    );
  }
}
