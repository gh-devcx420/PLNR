import 'package:flutter/material.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/utils/styles.dart';

class MobilePlansScreen extends StatefulWidget {
  const MobilePlansScreen({Key? key}) : super(key: key);

  @override
  State<MobilePlansScreen> createState() => _MobilePlansScreenState();
}

class _MobilePlansScreenState extends State<MobilePlansScreen> {
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
                //This Clip path is used to design a wave pattern and contains Header Row.
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
                //This Container is used to hold InsideBlackWave contents just below the Header Row.
                margin: const EdgeInsets.only(left: 20),
                height: 200,
                color: Colors.black,
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
                //This Clip path is used to design a wave pattern just below the InsideBlackWave.
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 100,
                  color: Colors.white,
                ),
              ),
              Container(
                //This Container is used to hold the Cards for Basic and Pro plus plans.
                height: 300,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: PlansPricingCardRow(
                    planNameStyle: vCardPlanNameStyleMob,
                    planAmountStyle: vCardPlanAmountStyleMob,
                    planInfoStyle: vCardPlanInfoTextStyleMob,
                    rowLabelStyle: vCardPlanBlueCheckTextStyleMob,
                    rowIconSize: kBlueTickIconSizeMob,
                    onFirstButtonTap: () {
                      print('Mobile>plans>pricing card>Buy Basic Plan!');
                    },
                    onSecondButtonTap: () {
                      print('Mobile>plans>pricing card>Buy Pro Plus Plan!');
                    },
                    buttonHeight: kButtonsHeightMob,
                    buttonWidth: kButtonsWidthMob,
                    buttonTextStyle: vButtonStyleMob,
                  ),
                ),
              ),
              Container(
                //This Container is used to hold the about us-RILT box, BottomStatsRow, and Credits Row.
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.only(left: 20),
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
                      riltHeading1Style: vRILTHeading1StyleMob,
                      riltHeading2: kFirmName,
                      riltHeading2Style: vRILTHeading2StyleMob,
                      riltBodyText:
                          '$kFirmName is an event planner website and app where you can complete your celebrations'
                          ' by selecting best vendors according to their profile, review, & best prices'
                          ' from any city all over India. There is no need to waste time booking events.'
                          ' $kFirmName will be THE organizer for your event. We help you make your'
                          ' already special day even more memorable and enjoyable! Check out \'Your Fanatsy List\' where you can'
                          ' find multiple options on $kFirmName. We rather remember the moments more than we remember the days.'
                          ' Let\'s make your moments Special!',
                      riltBodyTextStyle: vRILTTextBodyStyleMob,
                      learnMoreButtonHeight: kButtonsHeightMob,
                      learnMoreButtonWidth: kButtonsWidthMob,
                      learnMoreButtonTextStyle: vButtonStyleMob,
                      onLearnMoreTapped: () {
                        print(
                            'Tablet>plans>about us-RILT box>Learn More Pressed! ');
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
                      statsBarCountSize: kBottomStatsBarCountSizeMob,
                      statsBarCountUnitSize: kBottomStatsBarCountUnitSizeMob,
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
