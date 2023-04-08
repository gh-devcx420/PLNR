import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/utils/styles.dart';

class TabletAboutUsScreen extends StatefulWidget {
  const TabletAboutUsScreen({Key? key}) : super(key: key);

  @override
  State<TabletAboutUsScreen> createState() => _TabletAboutUsScreenState();
}

class _TabletAboutUsScreenState extends State<TabletAboutUsScreen> {
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
                  color: Colors.white,
                  height: 250,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 80, top: 50, right: 50),
                    child: TabletHeadingRow(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 80, right: 100),
                height: 400,
                color: Colors.black,
                child: InsideBlackWave(
                  blackWaveLabel: 'Meet the team who made us',
                  blackWaveIntroductionText:
                      'Exceptional Team with past experience of creating exceptional'
                      ' presence in society is here to give you an exceptional option to celebrate your events.',
                  blackWaveDownloadButtonRow: Button(
                    onTap: () {
                      print('Web>About us>InsideBlackWave>Meet Us Pressed! ');
                    },
                    buttonChild: Text(
                      'Meet Us',
                      style: GoogleFonts.ptSans(
                        color: kMoonlightBlack,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    buttonColour: kMoonlightGreen,
                    buttonHeight: kButtonsHeightWOT,
                    buttonWidth: kButtonsWidthWOT,
                  ),
                  socialButtonsRow: Container(),
                  imageOrEmpty: const Image(
                    image: AssetImage('assets/images/techstartup.jpg'),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(
                  height: 150,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Column(
                    children: [
                      DescriptionRowLIRT(
                        imageOrEmpty: const Expanded(
                          child: Image(
                            image: AssetImage(
                              'assets/images/techstartup.jpg',
                            ),
                          ),
                        ),
                        lirtHeading1: 'Our Vision',
                        lirtHeading1Style: vLIRTHeading1StyleWOT,
                        lirtHeading2: 'lirtHeading2',
                        lirtHeading2Style: vLIRTHeading2StyleWOT,
                        lirtBodyText:
                            'lirtText Bodybhfekuvggfkhsgbcuhksgdhuksbdhvuo uhug ouaau gyug uguh'
                            'uhbfhsdgvhbshkbshkvbshkdvb',
                        lirtBodyTextStyle: vLIRTTextBodyStyleWOT,
                        lirtCheckBoxOrEmpty: Container(),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      const DescriptionRowCentered(
                        centeredHeading1: 'We put our vendors first',
                        centeredHeading2:
                            'Register yourself to get access to huge customer base',
                        centeredBodyText: 'bla blalkfakghjabgj',
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Our Leadership',
                              textAlign: TextAlign.left,
                              style: vCenteredDescriptionHeading2Style,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DescriptionRowLIRT(
                        imageOrEmpty: const Expanded(
                          child: Image(
                            image: AssetImage('assets/images/ceopic.png'),
                          ),
                        ),
                        lirtCheckBoxOrEmpty: Container(),
                        lirtHeading1: '',
                        lirtHeading1Style: vLIRTHeading1StyleWOT,
                        lirtHeading2: '',
                        lirtHeading2Style: vLIRTHeading2StyleWOT,
                        lirtBodyText: '',
                        lirtBodyTextStyle: vLIRTTextBodyStyleWOT,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Harshith',
                                style: vCenteredDescriptionHeading2Style,
                              ),
                              Text(
                                'Founder & CEO',
                                style: vCenteredDescriptionHeading1Style,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                '20+',
                                style: GoogleFonts.ptSans(
                                  fontSize: 80,
                                  color: kMoonlightBlue,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                ' Amazing team members',
                                style: GoogleFonts.ptSans(
                                  fontSize: 20,
                                  color: kMoonlightBlue,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const BottomCreditsBar(creditsBarColour: kMoonlightWhite),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
