import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/constants/static_data.dart';
import 'package:nti_graduation_app/core/widgets/custom_cached_network_image.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.18,
      child: PageView.builder(
        itemCount: StaticData.ebayBannerImages.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: CustomCachedNetworkImage(
                image: StaticData.ebayBannerImages[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
