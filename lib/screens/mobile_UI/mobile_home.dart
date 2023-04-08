import 'package:flutter/material.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/styles.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
                  blackWaveLabel:
                      'Complete your fantasy knocking on $kFirmName',
                  blackWaveIntroductionText:
                      'Be the organizer of your own event. Select vendor of your own choice.',
                  blackWaveDownloadButtonRow: Row(
                    children: [
                      Expanded(
                        child: Button(
                          onTap: () {
                            print(
                                'Mobile>home>InsideBlackWave>RILT>Download Pressed! ');
                          },
                          buttonChild: Text(
                            'Download',
                            style: vButtonStyleMob,
                          ),
                          buttonColour: kMoonlightGreen,
                          buttonHeight: kButtonsHeightMob,
                          buttonWidth: kButtonsWidthMob,
                        ),
                      ),
                      Expanded(
                        child: Button(
                          onTap: () {
                            print(
                                'Mobile>home>InsideBlackWave>RILT>Learn More Pressed! ');
                          },
                          buttonChild: Text(
                            'Learn More',
                            style: vButtonStyleMob,
                          ),
                          buttonColour: kMoonlightGrey,
                          buttonHeight: kButtonsHeightMob,
                          buttonWidth: kButtonsWidthMob,
                        ),
                      ),
                    ],
                  ),
                  socialButtonsRow: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: kSocialButtonsIconsSizeMob,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.purple,
                          size: kSocialButtonsIconsSizeMob,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.lightBlueAccent,
                          size: kSocialButtonsIconsSizeMob,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.indigo,
                          size: kSocialButtonsIconsSizeMob,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.medium,
                          color: Colors.lightGreen,
                          size: kSocialButtonsIconsSizeMob,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                          size: kSocialButtonsIconsSizeMob,
                        ),
                      ),
                    ],
                  ),
                  imageOrEmpty: const SizedBox(
                    height: 300,
                    child: Image(
                      image: AssetImage('assets/images/phone.png'),
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 100,
                  color: kMoonlightWhite,
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AsFeaturedOn(
                          asFeaturedOnTextStyle: vAsFeaturedTextStyleMob,
                          iconSize: kAsFeaturedOnIconSizeMob),
                      const SizedBox(
                        height: 80,
                      ),
                      DescriptionRowLIRT(
                        lirtHeading1: 'About Us',
                        lirtHeading1Style: vLIRTHeading1StyleMob,
                        lirtHeading2: kFirmName,
                        lirtHeading2Style: vLIRTHeading2StyleMob,
                        lirtBodyText:
                            '$kFirmName is an event planner website and app where you can complete your celebrations'
                            ' by selecting best vendors according to their profile, review, & best prices'
                            ' from any city all over India. There is no need to waste time booking events. '
                            '$kFirmName will be THE organizer for your event. We help you make your'
                            ' already special day even more memorable and enjoyable! Check out \'Your Fanatsy List\' where you can'
                            ' find multiple opportunities. We rather remember the moments more than we remember the days.'
                            ' Let\'s make your moments Special!',
                        lirtBodyTextStyle: vLIRTTextBodyStyleMob,
                        imageOrEmpty: const SizedBox(
                          height: 300,
                          child: Image(
                            image: AssetImage('assets/images/phone.png'),
                          ),
                        ),
                        lirtCheckBoxOrEmpty: Column(
                          children: [
                            CheckIconWithText(
                              rowlabel: 'Text 1',
                              rowLabelStyle: vCheckIconWithTextStyleMob,
                              iconSize: kBlueTickIconSizeMob,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CheckIconWithText(
                              rowlabel: 'Text 2',
                              rowLabelStyle: vCheckIconWithTextStyleMob,
                              iconSize: kBlueTickIconSizeMob,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CheckIconWithText(
                              rowlabel: 'Text 3',
                              rowLabelStyle: vCheckIconWithTextStyleMob,
                              iconSize: kBlueTickIconSizeMob,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      DescriptionRowRILT(
                        riltHeading1: 'Smart Notifications',
                        riltHeading1Style: vRILTHeading1StyleMob,
                        riltHeading2: 'Never Miss Celebrations',
                        riltHeading2Style: vRILTHeading2StyleMob,
                        riltBodyText:
                            '$kFirmName is an event planner website and app where you can complete your celebrations'
                            ' by selecting best vendors according to their profile, review, & best prices'
                            ' from any city all over India. There is no need to waste time booking events. '
                            '$kFirmName will be THE organizer for your event. We help you make your'
                            ' already special day even more memorable and enjoyable! Check out \'Your Fanatsy List\' where you can'
                            ' find multiple opportunities. We rather remember the moments more than we remember the days.'
                            ' Let\'s make your moments Special!',
                        riltBodyTextStyle: vRILTTextBodyStyleMob,
                        learnMoreButtonHeight: kButtonsHeightMob,
                        learnMoreButtonWidth: kButtonsWidthMob,
                        learnMoreButtonTextStyle: vButtonStyleMob,
                        onLearnMoreTapped: () {
                          print(
                              'Tablet>home>RILT>smart notifications>Learn More Pressed! ');
                        },
                        imageOrContainer: const SizedBox(
                          height: 300,
                          child: Image(
                            image: AssetImage('assets/images/phone.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BottomCardRow(
                        cardOneTitle: 'Text 1',
                        cardOneTitleStyle: vBottomCardTitleStyleMob,
                        cardOneSubtitle: 'Subtext 1 here',
                        cardOneSubTitleStyle: vBottomCardSubTitleStyleMob,
                        cardTwoTitle: 'Text 2',
                        cardTwoTitleStyle: vBottomCardTitleStyleMob,
                        cardTwoSubtitle: 'Subtext 2 here',
                        cardTwoSubTitleStyle: vBottomCardSubTitleStyleMob,
                        cardThreeTitle: 'Text 3',
                        cardThreeTitleStyle: vBottomCardTitleStyleMob,
                        cardThreeSubtitle: 'Subtext 3 here',
                        cardThreeSubTitleStyle: vBottomCardSubTitleStyleMob,
                        iconSize: bottomRowIconSizeMob,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BottomCardRow(
                        cardOneTitle: 'Text 4',
                        cardOneTitleStyle: vBottomCardTitleStyleMob,
                        cardOneSubtitle: 'Subtext 4 here',
                        cardOneSubTitleStyle: vBottomCardSubTitleStyleMob,
                        cardTwoTitle: 'Text 5',
                        cardTwoTitleStyle: vBottomCardTitleStyleMob,
                        cardTwoSubtitle: 'Subtext 5 here',
                        cardTwoSubTitleStyle: vBottomCardSubTitleStyleMob,
                        cardThreeTitle: 'Text 6',
                        cardThreeTitleStyle: vBottomCardTitleStyleMob,
                        cardThreeSubtitle: 'Subtext 6 here',
                        cardThreeSubTitleStyle: vBottomCardSubTitleStyleMob,
                        iconSize: bottomRowIconSizeMob,
                      ),
                    ],
                  ),
                ),
              ),
              ClipPath(
                clipper: BottomDiagonalClipPath(),
                child: Container(
                  color: Colors.white,
                  height: 130,
                ),
              ),
              Container(
                color: Colors.black,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                learnMoreButtonTextStyle: vButtonStyleMob,
                                learnMoreButtonWidth: kButtonsWidthMob,
                                onLearnMoreTapped: () {
                                  print(
                                      'Mobile>home>RILT>about us>Learn More Pressed!');
                                },
                                imageOrContainer: Expanded(
                                  child: Container(),
                                ),
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                              const BottomStatsRow(
                                statsTextColour: kMoonlightBlue,
                                statsBarCountSize: kBottomStatsBarCountSizeMob,
                                statsBarCountUnitSize:
                                    kBottomStatsBarCountUnitSizeMob,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                height: 120,
                width: double.infinity,
                color: kMoonlightWhite,
                child: ClipPath(
                  clipper: WaveClipPathBottom(),
                  child: Container(
                    color: kMoonlightBlack,
                  ),
                ),
              ),
              const BottomCreditsBar(
                creditsBarColour: kMoonlightWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
