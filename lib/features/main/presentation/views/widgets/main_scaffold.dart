import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/nav_bar/nav_bar_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/part_view/cart_view.dart';
import 'package:nti_graduation_app/features/main/presentation/views/part_view/fav_view.dart'
    show FavView;
import 'package:nti_graduation_app/features/main/presentation/views/part_view/home_view.dart';
import 'package:nti_graduation_app/features/main/presentation/views/part_view/profile_view.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/custom_bottom_bar.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<NavBarCubit>(context);
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: CustomBottomBar(
            onTabChange: (index) => cubit.change(index: index),
          ),
          body: views[cubit.currentIndex],
        );
      },
    );
  }
}

List<Widget> views = [
  const HomeView(),
  const CartView(),
  const FavView(),

  const ProfileView(),
];
