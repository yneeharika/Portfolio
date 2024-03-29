import 'package:dev_portfolio/utils/animatedcontact.dart';
import 'package:dev_portfolio/utils/socialrow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/dev.jpg",
                height: 156.0,
              ),
              const Text(
                "Neeharika",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "I am a developer and I am looking for dev roles across india ",
                  textAlign: TextAlign.center,
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children:  [
                  Chip(
                    label: Text(
                      "Full Stack Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text(
                      "App Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              //
              const Divider(),
              //

              AnimatedContact(
                iconData: FontAwesomeIcons.github,
                title: "Github",
                subtitle: "Neeharika_coder",
                onTap: () {},
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.gitlab,
                title: "Gitlab",
                subtitle: "@Neeharika",
                onTap: () {},
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.linkedin,
                title: "Linkedin",
                subtitle: "CodeWithNeeharika",
                onTap: () {},
              ),
            ],
          ),

          //
          const Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          ),
        ],
      ),
    );
  }
}
