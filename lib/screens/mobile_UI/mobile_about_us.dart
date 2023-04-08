import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/utils/classes.dart';
import 'package:moonlight1/utils/clipped_paths.dart';
import 'package:moonlight1/utils/styles.dart';

class MobileAboutUsScreen extends StatefulWidget {
  const MobileAboutUsScreen({Key? key}) : super(key: key);

  @override
  State<MobileAboutUsScreen> createState() => _MobileAboutUsScreenState();
}

class _MobileAboutUsScreenState extends State<MobileAboutUsScreen> {
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
                  height: 120,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: MobileHeadingRow(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 300,
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
                      style: vButtonStyleMob,
                    ),
                    buttonColour: kMoonlightGreen,
                    buttonHeight: kButtonsHeightMob,
                    buttonWidth: kButtonsWidthMob,
                  ),
                  socialButtonsRow: Container(),
                  imageOrEmpty: const Image(
                    image: AssetImage('assets/images/techstartup.jpg'),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipPathC2(),
                child: Container(height: 100, color: kMoonlightWhite),
              ),
              Container(
                color: kMoonlightWhite,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                        lirtHeading1Style: vLIRTHeading1StyleMob,
                        lirtHeading2: 'lirtHeading2',
                        lirtHeading2Style: vLIRTHeading2StyleMob,
                        lirtBodyText:
                            'lirtText Bodybhfekuvggfkhsgbcuhksgdhuksbdhvuo uhug ouaau gyug uguh'
                            'uhbfhsdgvhbshkbshkvbshkdvb',
                        lirtBodyTextStyle: vLIRTTextBodyStyleMob,
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
                        height: 100,
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
