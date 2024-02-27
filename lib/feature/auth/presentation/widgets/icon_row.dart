import 'package:anime_app/core/helpers/app_images.dart';
import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Image.asset(Assets.facebook)),
        IconButton(onPressed: () {}, icon: Image.asset(Assets.google)),
      ],
    );
  }
}
