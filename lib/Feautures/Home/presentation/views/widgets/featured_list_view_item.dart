import 'package:bookly_app/Feautures/Home/presentation/views/widgets/play_button.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .27,
      child: AspectRatio(
        aspectRatio: 134 / 210,
        child: Container(
          padding: const EdgeInsets.only(right: 10, bottom: 10),
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
              image: AssetImage(
                Assets.imagesHarryPotterAndTheChamberOfSecrets6,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: const PlayButton(),
        ),
      ),
    );
  }
}