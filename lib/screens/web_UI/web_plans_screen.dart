import 'package:flutter/material.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/styles.dart';

class WebPlansScreen extends StatefulWidget {
  const WebPlansScreen({Key? key}) : super(key: key);

  @override
  State<WebPlansScreen> createState() => _WebPlansScreenState();
}

class _WebPlansScreenState extends State<WebPlansScreen> {
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
                  height: 350,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 150, top: 80, right: 50),
                    child: WebHeadingRow(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 150),
                height: 400,
                color: kMoonlightBlack,
                child: InsideBlackWave(
                  blackWaveLabel: 'Simple Affordable Plans',
                  blackWaveIntroductionText:
                      'All plans are very affordable to use/ rent/ buy!',
                  blackWaveDownloadButtonRow: Container(),
                  socialButtonsRow: Container(),
                  imageOrEmpty: Container(),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 250,
                  color: kMoonlightWhite,
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                color: kMoonlightWhite,
                child: Padding(
                  padding: const EdgeInsets.only(left: 150, right: 150),
                  child: PlansPricingCardRow(
                    planNameStyle: vCardPlanNameStyleWOT,
                    planAmountStyle: vCardPlanAmountStyleWOT,
                    planInfoStyle: vCardPlanInfoTextStyleWOT,
                    rowLabelStyle: vCardPlanBlueCheckTextStyleWOT,
                    rowIconSize: kBlueTickIconSizeWOT,
                    onFirstButtonTap: () {
                      print('Web>plans>pricing card>Buy Basic Plan!');
                    },
                    onSecondButtonTap: () {
                      print('Web>plans>pricing card>Buy Pro Plus Plan!');
                    },
                    buttonHeight: kButtonsHeightWOT,
                    buttonWidth: kButtonsWidthWOT,
                    buttonTextStyle: vButtonStyleMob,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.only(left: 150, right: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.supervised_user_circle_rounded,
                      size: 80,
                      color: Colors.lightBlueAccent,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DescriptionRowRILT(
                      riltHeading1: 'About Us',
                      riltHeading1Style: vRILTHeading1StyleWOT,
                      riltHeading2: kFirmName,
                      riltHeading2Style: vRILTHeading2StyleWOT,
                      riltBodyText:
                          '$kFirmName is an event planner website and app where you can complete your celebrations'
                          ' by selecting best vendors according to their profile, review, & best prices'
                          ' from any city all over India. There is no need to waste time booking events.'
                          ' $kFirmName will be THE organizer for your event. We help you make your'
                          ' already special day even more memorable and enjoyable! Check out \'Your Fanatsy List\' where you can'
                          ' find multiple options on $kFirmName. We rather remember the moments more than we remember the days.'
                          ' Let\'s make your moments Special!',
                      riltBodyTextStyle: vRILTTextBodyStyleWOT,
                      learnMoreButtonHeight: kButtonsHeightWOT,
                      learnMoreButtonWidth: kButtonsWidthWOT,
                      learnMoreButtonTextStyle: vButtonStyleWOT,
                      onLearnMoreTapped: () {
                        print(
                            'Web>plans>about us-RILT box>Learn More Pressed! ');
                      },
                      imageOrContainer: Expanded(
                        child: Container(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const BottomStatsRow(
                      statsTextColour: Colors.black,
                      statsBarCountSize: kBottomStatsBarCountSizeWOT,
                      statsBarCountUnitSize: kBottomStatsBarCountUnitSizeWOT,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const BottomCreditsBar(
                creditsBarColour: kMoonlightWhite,
              )
            ],
          ),
        ),
      ),
    );
  }
}
