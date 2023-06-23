import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const AnimatedContact(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtitle,
      required this.onTap});

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(
          () {
            isHovering = val;
          },
        );
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isHovering ? Colors.grey : Colors.white,
          ),
        ),
        duration: const Duration(
          milliseconds: 300,
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(widget.iconData),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(widget.subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
