import 'package:flutter/material.dart';
import 'package:moonlight1/utils/styles.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';

class MobilePrivacyPolicyPage extends StatefulWidget {
  const MobilePrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  State<MobilePrivacyPolicyPage> createState() =>
      _MobilePrivacyPolicyPageState();
}

class _MobilePrivacyPolicyPageState extends State<MobilePrivacyPolicyPage> {
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
                  color: kMoonlightWhite,
                  height: 120,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: MobileHeadingRow(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 300,
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
                      Text('Updated on: 30-Jan-2023 ',
                          style: vBlackWaveIntroductionTextStyleMob),
                    ],
                  ),
                  socialButtonsRow: Container(),
                  imageOrEmpty: Container(),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 100,
                  color: kMoonlightWhite,
                ),
              ),
              PrivacyPolicyBody(
                paddingLeft: 20,
                paddingRight: 20,
                titleTextStyle: vPrivacyPolicyHeadingStyleMob,
                bodyTextStyle: vPrivacyPolicyBodyTextStyleMob,
                bulletHeadingStyle: vPrivacyPolicyBulletHeadingStyleMob,
                bulletBodyStyle: vPrivacyPolicyBulletBodyStyleMob,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
