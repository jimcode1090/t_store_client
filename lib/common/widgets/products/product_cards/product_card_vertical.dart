import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_client/common/styles/shadows.dart';
import 'package:t_store_client/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store_client/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store_client/common/widgets/images/t_rounded_image.dart';
import 'package:t_store_client/utils/constants/colors.dart';
import 'package:t_store_client/utils/constants/image_strings.dart';
import 'package:t_store_client/utils/constants/sizes.dart';
import 'package:t_store_client/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        children: [
          // Thumbnail
          TRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // Image
                TRoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),

                // Sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withAlpha(
                      (0.8 * 255).toInt(),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                  ),
                ),

                // Favorite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          // Details
        ],
      ),
    );
  }
}
