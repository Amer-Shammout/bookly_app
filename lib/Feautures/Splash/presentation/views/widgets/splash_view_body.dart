import 'package:bookly_app/Feautures/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: const Offset(0, 0),
    ).animate(_animationController);

    _animationController.forward();

    // _slidingAnimation.addListener(
    //   () {
    //     setState(() {});       Alternative to AnimatedBuilder
    //   },
    // );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            Assets.imagesLogo,
            width: MediaQuery.sizeOf(context).width * .7,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SlidingText(slidingAnimation: _slidingAnimation)
      ],
    );
  }
}

