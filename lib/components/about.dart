import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/utils/animated_contact.dart';
import 'package:portfolio_website/utils/social_row.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(30),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600 ? context.screenWidth * 0.3 : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/mypic.png",
            height: 200,
          ),
          const Text(
            "Saurav Bauddh",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "Budding Flutter Developer, looking for developer roles",
            textAlign: TextAlign.center,
          ),
          const Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text(
                  "Native Android Developer",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                side: BorderSide(width: 0, color: Colors.green),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                backgroundColor: Colors.green,
              ),
              Chip(
                label: Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                side: BorderSide(width: 0, color: Colors.green),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                backgroundColor: Colors.green,
              ),
            ],
          ),
          const Divider(),
          AnimatedContact(iconData: FontAwesomeIcons.github, title: "Github", subtitle: "sauravbauddh", onTap: (){}),
          AnimatedContact(iconData: FontAwesomeIcons.linkedin, title: "LinkedIn", subtitle: "sauravbauddh", onTap: (){}),
          const SocialRow(),
        ],
      ),
    );
  }
}
