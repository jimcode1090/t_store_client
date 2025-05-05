import 'package:flutter/material.dart';
import 'package:t_store_client/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store_client/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store_client/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store_client/common/widgets/texts/section_heading.dart';
import 'package:t_store_client/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store_client/utils/constants/image_strings.dart';
import 'package:t_store_client/utils/constants/sizes.dart';

import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

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
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
