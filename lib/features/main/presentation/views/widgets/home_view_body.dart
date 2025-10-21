import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/constants/static_data.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/banner_caousel.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/categories_list.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/horizontal_products.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/products_grid.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/section_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async =>
            await Future.delayed(const Duration(milliseconds: 500)),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BannerCarousel(),
                  const SizedBox(height: 24),
                  CategoriesList(),
                  const SizedBox(height: 12),
                  const SectionHeader(title: 'Daily Deals'),
                  const SizedBox(height: 12),
                  HorizontalProducts(products: StaticData.products),
                  const SizedBox(height: 12),
                  const SectionHeader(title: 'Recommended for you'),
                  const SizedBox(height: 12),
                  ProductsGrid(products: StaticData.products),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
