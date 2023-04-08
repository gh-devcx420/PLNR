import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moonlight1/utils/styles.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
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
                color: Colors.black,
                child: InsideBlackWave(
                  blackWaveLabel:
                      'Complete your fantasy knocking on $kFirmName',
                  blackWaveIntroductionText:
                      'Be the organizer of your own event. Select vendor of your own choice.',
                  blackWaveDownloadButtonRow: Row(
                    children: [
                      Button(
                        onTap: () {
                          print('Web>home>InsideBlackWave>Download Pressed! ');
                        },
                        buttonChild: Text(
                          ' Download',
                          style: GoogleFonts.ptSans(
                            color: kMoonlightBlack,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        buttonColour: kMoonlightGreen,
                        buttonHeight: kButtonsHeightWOT,
                        buttonWidth: kButtonsWidthWOT,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Button(
                        onTap: () {
                          print(
                              'Web>home>InsideBlackWave>Learn More Pressed! ');
                        },
                        buttonChild: Text(
                          'Learn More',
                          style: GoogleFonts.ptSans(
                            color: kMoonlightBlack,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        buttonColour: kMoonlightGrey,
                        buttonHeight: kButtonsHeightWOT,
                        buttonWidth: kButtonsWidthWOT,
                      ),
                    ],
                  ),
                  socialButtonsRow: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: kSocialButtonsIconsSizeWOT,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.purple,
                        size: kSocialButtonsIconsSizeWOT,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlueAccent,
                        size: kSocialButtonsIconsSizeWOT,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.indigo,
                        size: kSocialButtonsIconsSizeWOT,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.medium,
                        color: Colors.lightGreen,
                        size: kSocialButtonsIconsSizeWOT,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                        size: kSocialButtonsIconsSizeWOT,
                      ),
                    ],
                  ),
                  imageOrEmpty: const Image(
                    image: AssetImage('assets/images/phone.png'),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 250,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 150, right: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AsFeaturedOn(
                        asFeaturedOnTextStyle: vAsFeaturedTextStyleWOT,
                        iconSize: kAsFeaturedOnIconSizeWOT,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      DescriptionRowLIRT(
                        lirtHeading1: 'About Us',
                        lirtHeading1Style: vLIRTHeading1StyleWOT,
                        lirtHeading2: kFirmName,
                        lirtHeading2Style: vLIRTHeading2StyleWOT,
                        lirtBodyText:
                            '$kFirmName is an event planner website and app where you can complete your celebrations'
                            ' by selecting best vendors according to their profile, review, & best prices'
                            ' from any city all over India. There is no need to waste time booking events. '
                            '$kFirmName will be THE organizer for your event. We help you make your'
                            ' already special day even more memorable and enjoyable! Check out \'Your Fanatsy List\' where you can'
                            ' find multiple opportunities. We rather remember the moments more than we remember the days.'
                            ' Let\'s make your moments Special!',
                        lirtBodyTextStyle: vLIRTTextBodyStyleWOT,
                        imageOrEmpty: const Image(
                          image: AssetImage('assets/images/phone.png'),
                        ),
                        lirtCheckBoxOrEmpty: Column(
                          children: [
                            CheckIconWithText(
                              rowlabel: 'Text 1',
                              rowLabelStyle: vCardPlanBlueCheckTextStyleWOT,
                              iconSize: kBlueTickIconSizeWOT,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CheckIconWithText(
                              rowlabel: 'Text 2',
                              rowLabelStyle: vCardPlanBlueCheckTextStyleWOT,
                              iconSize: kBlueTickIconSizeWOT,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CheckIconWithText(
                              rowlabel: 'Text 3',
                              rowLabelStyle: vCardPlanBlueCheckTextStyleWOT,
                              iconSize: kBlueTickIconSizeWOT,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      DescriptionRowRILT(
                        riltHeading1: 'Smart Notifications',
                        riltHeading1Style: vRILTHeading1StyleWOT,
                        riltHeading2: 'Never Miss Celebrations',
                        riltHeading2Style: vRILTHeading2StyleWOT,
                        riltBodyText:
                            '$kFirmName is an event planner website and app where you can complete your celebrations'
                            ' by selecting best vendors according to their profile, review, & best prices'
                            ' from any city all over India. There is no need to waste time booking events. '
                            '$kFirmName will be THE organizer for your event. We help you make your'
                            ' already special day even more memorable and enjoyable! Check out \'Your Fanatsy List\' where you can'
                            ' find multiple opportunities. We rather remember the moments more than we remember the days.'
                            ' Let\'s make your moments Special!',
                        riltBodyTextStyle: vRILTTextBodyStyleWOT,
                        learnMoreButtonHeight: kButtonsHeightWOT,
                        learnMoreButtonWidth: kButtonsWidthWOT,
                        learnMoreButtonTextStyle: vButtonStyleWOT,
                        onLearnMoreTapped: () {
                          print(
                              'Web>home>smart notifications-RILT box>Learn More Pressed! ');
                        },
                        imageOrContainer: const Image(
                          image: AssetImage('assets/images/phone.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BottomCardRow(
                        cardOneTitle: 'Text 1',
                        cardOneTitleStyle: vBottomCardTitleStyleWOT,
                        cardOneSubtitle: 'Subtext 1 here',
                        cardOneSubTitleStyle: vBottomCardSubTitleStyleWOT,
                        cardTwoTitle: 'Text 2',
                        cardTwoTitleStyle: vBottomCardTitleStyleWOT,
                        cardTwoSubTitleStyle: vBottomCardSubTitleStyleWOT,
                        cardTwoSubtitle: 'Subtext 2 here',
                        cardThreeTitle: 'Text 3',
                        cardThreeTitleStyle: vBottomCardTitleStyleWOT,
                        cardThreeSubtitle: 'Subtext 3 here',
                        cardThreeSubTitleStyle: vBottomCardSubTitleStyleWOT,
                        iconSize: bottomRowIconSizeWOT,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BottomCardRow(
                        cardOneTitle: 'Text 4',
                        cardOneTitleStyle: vBottomCardTitleStyleWOT,
                        cardOneSubtitle: 'Subtext 4 here',
                        cardOneSubTitleStyle: vBottomCardSubTitleStyleWOT,
                        cardTwoTitle: 'Text 5',
                        cardTwoTitleStyle: vBottomCardTitleStyleWOT,
                        cardTwoSubtitle: 'Subtext 5 here',
                        cardTwoSubTitleStyle: vBottomCardSubTitleStyleWOT,
                        cardThreeTitle: 'Text 6',
                        cardThreeTitleStyle: vBottomCardTitleStyleWOT,
                        cardThreeSubtitle: 'Subtext 6 here',
                        cardThreeSubTitleStyle: vBottomCardSubTitleStyleWOT,
                        iconSize: bottomRowIconSizeWOT,
                      ),
                    ],
                  ),
                ),
              ),
              ClipPath(
                clipper: BottomDiagonalClipPath(),
                child: Container(
                  color: Colors.white,
                  height: 250,
                ),
              ),
              Container(
                color: Colors.black,
                child: Padding(
                    padding: const EdgeInsets.only(left: 150, right: 150),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                      'Web>home>RILT>about us>Learn More Pressed!');
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
                                statsBarCountSize: kBottomStatsBarCountSizeWOT,
                                statsBarCountUnitSize:
                                    kBottomStatsBarCountUnitSizeWOT,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                height: 350,
                width: double.infinity,
                color: Colors.white,
                child: ClipPath(
                  clipper: WaveClipPathBottom(),
                  child: Container(
                    color: Colors.black,
                  ),
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
