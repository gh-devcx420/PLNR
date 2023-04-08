import 'package:flutter/material.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/styles.dart';

class TabletPrivacyPolicyScreen extends StatefulWidget {
  const TabletPrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<TabletPrivacyPolicyScreen> createState() =>
      _TabletPrivacyPolicyScreenState();
}

class _TabletPrivacyPolicyScreenState extends State<TabletPrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMoonlightBlack,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipPathC1(),
                child: Container(
                  color: Colors.white,
                  height: 250,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 80, top: 50, right: 50),
                    child: TabletHeadingRow(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 80),
                height: 400,
                color: Colors.black,
                child: InsideBlackWave(
                  blackWaveLabel: 'Privacy Policy',
                  blackWaveIntroductionText:
                      'Plnrevelry.com. ("we," "our," or "us") is committed to protecting your privacy.'
                      ' This Privacy Policy explains how your personal information is collected, used, and disclosed by Plnrevelry.com.'
                      ' This Privacy Policy applies to our website, plnrevelry.com, and its associated subdomains (collectively, our "Service").'
                      ' By accessing or using our Service, you signify that you have read, understood, and agree to our collection, storage, use, and disclosure of your personal information as described in this Privacy Policy and our Terms of Service.',
                  blackWaveDownloadButtonRow: Row(
                    children: [
                      Text(
                        'Updated on: 30-Jan-2023 ',
                        style: vBlackWaveIntroductionTextStyleWOT,
                      ),
                    ],
                  ),
                  socialButtonsRow: Container(),
                  imageOrEmpty: Container(),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 150,
                  color: Colors.white,
                ),
              ),
              PrivacyPolicyBody(
                paddingLeft: 80,
                paddingRight: 80,
                titleTextStyle: vPrivacyPolicyHeadingStyleWOT,
                bodyTextStyle: vPrivacyPolicyBodyTextStyleWOT,
                bulletHeadingStyle: vPrivacyPolicyBulletBodyStyleWOT,
                bulletBodyStyle: vPrivacyPolicyBulletBodyStyleWOT,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
