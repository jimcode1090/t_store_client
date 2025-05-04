import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:t_store_client/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store_client/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store_client/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store_client/common/widgets/images/t_rounded_image.dart';
import 'package:t_store_client/common/widgets/texts/section_heading.dart';
import 'package:t_store_client/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:t_store_client/utils/constants/image_strings.dart';
import 'package:t_store_client/utils/constants/sizes.dart';

import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header -- Tutorial
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(viewportFraction: 0.8),
                    items: [
                      TRoundedImage(imageUrl: TImages.promoBanner1),
                      TRoundedImage(imageUrl: TImages.promoBanner1),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        TCircularContainer(
                          width: 20,
                          height: 4,
                          margin: EdgeInsets.only(right: 10),
                          backgroundColor: Colors.grey,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
