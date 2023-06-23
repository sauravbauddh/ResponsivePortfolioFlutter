import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'animated_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedIconButton(
            iconData: FontAwesomeIcons.facebook,
            onTap: () {},
          ),
          const SizedBox(
            width: 8,
          ),
          AnimatedIconButton(
            iconData: FontAwesomeIcons.instagram,
            onTap: () {},
          ),
        ]);
  }
}
