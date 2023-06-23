import 'package:flutter/material.dart';
import 'package:portfolio_website/components/about.dart';
import 'package:portfolio_website/components/education.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Education"),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Skills"),
      ),
    ),
  ];
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile ? Drawer(
        backgroundColor: Colors.purple.shade50,
        child: ListView(
          children: navItems,
        ),
      ) : null,
        body: const SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 30,
                  children: [
                    About(),
                    Education(),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
