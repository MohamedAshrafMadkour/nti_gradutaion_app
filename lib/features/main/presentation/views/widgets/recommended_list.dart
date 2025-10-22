import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/loading/recommended_loading_widget.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/recommended_cubit/recommended_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/recommended_item.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedCubit, RecommendedState>(
      builder: (context, state) {
        if (state is RecommendedSuccess) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: state.recommendedList.length,
                (context, index) => RecommendedItem(
                  recommendedModel: state.recommendedList[index],
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
            ),
          );
        } else if (state is RecommendedFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.failure),
            ),
          );
        } else {
          return RecommendedLoadingWidget();
        }
      },
    );
  }
}
