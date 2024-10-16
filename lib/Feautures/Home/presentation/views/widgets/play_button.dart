import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white.withOpacity(.1),
      radius: 20,
      child: IconButton(
        icon: const Icon(
          size: 20,
          Icons.play_arrow,
        ),
        onPressed: () {},
        padding: EdgeInsets.zero,
      ),
    );
  }
}
