import 'package:flutter/material.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/banner_caousel.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/categories_list.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/clothes_list.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/recommended_list.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/section_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: const [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BannerCarousel(),
                SizedBox(height: 24),
                CategoriesList(),
                SizedBox(height: 12),
                SectionHeader(title: 'Clothes Section'),
                SizedBox(height: 12),
                ClothesList(),
                SizedBox(height: 12),
                SectionHeader(title: 'Recommended for you'),
                SizedBox(height: 12),
              ],
            ),
          ),
          RecommendedProducts(),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}
