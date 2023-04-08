import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight1/utils/styles.dart';
import 'package:moonlight1/utils/constants.dart';
import 'package:moonlight1/screens/mobile_UI/mobile_home.dart';
import 'package:moonlight1/screens/mobile_UI/mobile_plans_screen.dart';
import 'package:moonlight1/screens/mobile_UI/mobile_about_us.dart';
import 'package:moonlight1/screens/mobile_UI/mobile_privacy_policy.dart';
import 'package:moonlight1/screens/tablet_UI/tablet_home.dart';
import 'package:moonlight1/screens/tablet_UI/tablet_plans_screen.dart';
import 'package:moonlight1/screens/tablet_UI/tablet_about_us.dart';
import 'package:moonlight1/screens/tablet_UI/tablet_privacy_policy.dart';
import 'package:moonlight1/screens/web_UI/web_home_screen.dart';
import 'package:moonlight1/screens/web_UI/web_plans_screen.dart';
import 'package:moonlight1/screens/web_UI/web_about_us_screen.dart';
import 'package:moonlight1/screens/web_UI/web_privacy_policy_screen.dart';

//************************Elements Classes************************
//Buttons such as View More, Download and other rounded buttons.
class Button extends StatelessWidget {
  const Button(
      {super.key,
        required this.onTap,
        required this.buttonChild,
        required this.buttonColour,
        required this.buttonHeight,
        required this.buttonWidth});

  final Function() onTap;
  final Widget buttonChild;
  final Color buttonColour;
  final double buttonHeight;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColour,
        ),
        width: buttonWidth,
        height: buttonHeight,
        child: Center(
          child: buttonChild,
        ),
      ),
    );
  }
}

//Widget used to display Blue Checked Icon with text.
class CheckIconWithText extends StatelessWidget {
  const CheckIconWithText({
    super.key,
    required this.rowlabel,
    required this.iconSize,
    required this.rowLabelStyle,
  });

  final String rowlabel;
  final TextStyle rowLabelStyle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: kMoonlightBlue,
          size: iconSize,
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(rowlabel, style: rowLabelStyle),
        ),
      ],
    );
  }
}

//************************Content Classes*************************
//Row to display the main header of the website (Website Name and 4 buttons).
class HeadingRow extends StatelessWidget {
  const HeadingRow({
    super.key,
    required this.onHomeTap,
    required this.homeChild,
    required this.onPlansTap,
    required this.plansChild,
    required this.onAboutUsTap,
    required this.aboutUsChild,
    required this.onContactUsTap,
    required this.contactUsChild,
    required this.onPrivacyPolicyTap,
    required this.privacyPolicyChild,
  });

  final Function() onHomeTap;
  final Widget homeChild;
  final Function() onPlansTap;
  final Widget plansChild;
  final Function() onAboutUsTap;
  final Widget aboutUsChild;
  final Function() onContactUsTap;
  final Widget contactUsChild;
  final Function() onPrivacyPolicyTap;
  final Widget privacyPolicyChild;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            kFirmName,
            style: GoogleFonts.ptMono(
              fontWeight: FontWeight.w900,
              fontSize: MediaQuery.of(context).size.width < 650 ? 40 : 60,
            ),
          ),
        ),
        Expanded(
          child: Button(
            onTap: onHomeTap,
            buttonColour: kButtonColour,
            buttonHeight: MediaQuery.of(context).size.width < 650
                ? kButtonsHeightMob
                : kButtonsHeightWOT,
            buttonWidth: MediaQuery.of(context).size.width < 650
                ? kButtonsWidthMob
                : kButtonsWidthWOT,
            buttonChild: homeChild,
          ),
        ),
        Expanded(
          child: Button(
            onTap: onPlansTap,
            buttonColour: kButtonColour,
            buttonHeight: MediaQuery.of(context).size.width < 650
                ? kButtonsHeightMob
                : kButtonsHeightWOT,
            buttonWidth: MediaQuery.of(context).size.width < 650
                ? kButtonsWidthMob
                : kButtonsWidthWOT,
            buttonChild: plansChild,
          ),
        ),
        Expanded(
          child: Button(
            onTap: onAboutUsTap,
            buttonColour: kButtonColour,
            buttonHeight: MediaQuery.of(context).size.width < 650
                ? kButtonsHeightMob
                : kButtonsHeightWOT,
            buttonWidth: MediaQuery.of(context).size.width < 650
                ? kButtonsWidthMob
                : kButtonsWidthWOT,
            buttonChild: aboutUsChild,
          ),
        ),
        Expanded(
          child: Button(
            onTap: onContactUsTap,
            buttonColour: kButtonColour,
            buttonHeight: MediaQuery.of(context).size.width < 650
                ? kButtonsHeightMob
                : kButtonsHeightWOT,
            buttonWidth: MediaQuery.of(context).size.width < 650
                ? kButtonsWidthMob
                : kButtonsWidthWOT,
            buttonChild: contactUsChild,
          ),
        ),
        Expanded(
          child: Button(
            onTap: onPrivacyPolicyTap,
            buttonColour: kButtonColour,
            buttonHeight: MediaQuery.of(context).size.width < 650
                ? kButtonsHeightMob
                : kButtonsHeightWOT,
            buttonWidth: MediaQuery.of(context).size.width < 650
                ? kButtonsWidthMob
                : kButtonsWidthWOT,
            buttonChild: privacyPolicyChild,
          ),
        ),
      ],
    );
  }
}

//HeadingRow used to display the Main Header of the WebSite in Mobile View only.
class MobileHeadingRow extends StatelessWidget {
  const MobileHeadingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeadingRow(
      onHomeTap: () {
        print('Mobile>HeadingRow>Home Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MobileHomeScreen(),
          ),
        );
      },
      homeChild: const Icon(
        Icons.home,
        size: kHeaderIconsSizeMob,
        color: kMoonlightBlue,
      ),
      onPlansTap: () {
        print('Mobile>HeadingRow>Plans Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MobilePlansScreen(),
          ),
        );
      },
      plansChild: const Icon(
        Icons.monetization_on_rounded,
        size: kHeaderIconsSizeMob,
        color: kMoonlightBlue,
      ),
      onAboutUsTap: () {
        print('Mobile>HeadingRow>About Us Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MobileAboutUsScreen(),
          ),
        );
      },
      aboutUsChild: const Icon(
        Icons.info,
        size: kHeaderIconsSizeMob,
        color: kMoonlightBlue,
      ),
      onContactUsTap: () {
        print('Mobile>HeadingRow>Contact Us Pressed!');
      },
      contactUsChild: const Icon(
        Icons.contact_phone_rounded,
        size: kHeaderIconsSizeMob,
        color: kMoonlightBlue,
      ),
      onPrivacyPolicyTap: () {
        print('Mobile>HeadingRow>Privacy Policy Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MobilePrivacyPolicyPage(),
          ),
        );
      },
      privacyPolicyChild: const Icon(
        Icons.policy_rounded,
        size: kHeaderIconsSizeMob,
        color: kMoonlightBlue,
      ),
    );
  }
}

//HeadingRow used to display the Main Header of WebPage in Web View only.
class WebHeadingRow extends StatelessWidget {
  const WebHeadingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeadingRow(
      homeChild: Text(
        'Home',
        style: vHeaderButtonsTextStyle,
      ),
      onHomeTap: () {
        print('Web>HeadingRow>Home Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebHomeScreen(),
          ),
        );
      },
      plansChild: Text(
        'Plans',
        style: vHeaderButtonsTextStyle,
      ),
      onPlansTap: () {
        print('Web>HeadingRow>Plans Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebPlansScreen(),
          ),
        );
      },
      aboutUsChild: Text(
        'About Us',
        style: vHeaderButtonsTextStyle,
      ),
      onAboutUsTap: () {
        print('Web>HeadingRow>About Us Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebAboutUsScreen(),
          ),
        );
      },
      contactUsChild: Text(
        'Contact Us',
        style: vHeaderButtonsTextStyle,
      ),
      onContactUsTap: () {
        print('Web>HeadingRow> Contact Us Pressed!');
      },
      privacyPolicyChild: Text(
        'Privacy Policy',
        style: vHeaderButtonsTextStyle,
      ),
      onPrivacyPolicyTap: () {
        print('Web>HeadingRow>Privacy Policy Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebPrivacyPolicyScreen(),
          ),
        );
      },
    );
  }
}

//HeadingRow used to display the Main Header of the WebSite in Tablet View only.
class TabletHeadingRow extends StatelessWidget {
  const TabletHeadingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeadingRow(
      onHomeTap: () {
        print('Tablet>HeadingRow>Home Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TabletHomeScreen(),
          ),
        );
      },
      homeChild: const Icon(
        Icons.home,
        size: kHeaderIconsSizeWOT,
        color: kMoonlightBlue,
      ),
      onPlansTap: () {
        print('Tablet>HeadingRow>Plans Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TabletPlansScreen(),
          ),
        );
      },
      plansChild: const Icon(
        Icons.monetization_on_rounded,
        size: kHeaderIconsSizeWOT,
        color: kMoonlightBlue,
      ),
      onAboutUsTap: () {
        print('Tablet>HeadingRow>About Us Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TabletAboutUsScreen(),
          ),
        );
      },
      aboutUsChild: const Icon(
        Icons.info,
        size: kHeaderIconsSizeWOT,
        color: kMoonlightBlue,
      ),
      onContactUsTap: () {
        print('Tablet>HeadingRow>Contact Us Pressed!');
      },
      contactUsChild: const Icon(
        Icons.contact_phone_rounded,
        size: kHeaderIconsSizeWOT,
        color: kMoonlightBlue,
      ),
      onPrivacyPolicyTap: () {
        print('Tablet>HeadingRow>Privacy Policy Pressed!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TabletPrivacyPolicyScreen(),
          ),
        );
      },
      privacyPolicyChild: const Icon(
        Icons.policy_rounded,
        size: kHeaderIconsSizeWOT,
        color: kMoonlightBlue,
      ),
    );
  }
}

//Row to display the contents inside the Black Wave.
class InsideBlackWave extends StatelessWidget {
  const InsideBlackWave({
    super.key,
    required this.blackWaveLabel,
    required this.blackWaveIntroductionText,
    required this.blackWaveDownloadButtonRow,
    required this.socialButtonsRow,
    required this.imageOrEmpty,
  });

  final String blackWaveLabel;
  final String blackWaveIntroductionText;
  final Widget blackWaveDownloadButtonRow;
  final Widget socialButtonsRow;
  final Widget imageOrEmpty;

  @override
  Widget build(BuildContext context) {
    return Row(
      //Inside Black wave
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                blackWaveLabel,
                style: MediaQuery.of(context).size.width < 650
                    ? vBlackWaveLabelStyleMob
                    : vBlackWaveLabelStyleWOT,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                blackWaveIntroductionText,
                style: MediaQuery.of(context).size.width < 650
                    ? vBlackWaveIntroductionTextStyleMob
                    : vBlackWaveIntroductionTextStyleWOT,
              ),
              const SizedBox(
                height: 30,
              ),
              blackWaveDownloadButtonRow,
              const SizedBox(
                height: 30,
              ),
              socialButtonsRow,
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: imageOrEmpty,
          ),
        ),
      ],
    );
  }
}

//Row that displays 'As Featured on' section in Homepage.
class AsFeaturedOn extends StatelessWidget {
  const AsFeaturedOn({
    super.key,
    required this.asFeaturedOnTextStyle,
    required this.iconSize,
  });

  final TextStyle asFeaturedOnTextStyle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'As featured on:',
          style: asFeaturedOnTextStyle,
        ),
        Expanded(
          child: Icon(
            Icons.image_aspect_ratio_rounded,
            size: iconSize,
            color: kMoonlightBlue,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.image_aspect_ratio_rounded,
            size: iconSize,
            color: kMoonlightBlue,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.image_aspect_ratio_rounded,
            size: iconSize,
            color: kMoonlightBlue,
          ),
        ),
        Expanded(
          child: Icon(
            Icons.image_aspect_ratio_rounded,
            size: iconSize,
            color: kMoonlightBlue,
          ),
        ),
      ],
    );
  }
}

//Row used to display LIRT - LeftImageRightText boxes.
//(Used in: Home>About Us).
class DescriptionRowLIRT extends StatelessWidget {
  const DescriptionRowLIRT({
    super.key,
    required this.imageOrEmpty,
    required this.lirtCheckBoxOrEmpty,
    required this.lirtHeading1,
    required this.lirtHeading1Style,
    required this.lirtHeading2,
    required this.lirtHeading2Style,
    required this.lirtBodyText,
    required this.lirtBodyTextStyle,
  });

  final Widget imageOrEmpty;
  final Widget lirtCheckBoxOrEmpty;
  final String lirtHeading1;
  final TextStyle lirtHeading1Style;
  final String lirtHeading2;
  final TextStyle lirtHeading2Style;
  final String lirtBodyText;
  final TextStyle lirtBodyTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        imageOrEmpty,
        const SizedBox(
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                lirtHeading1,
                style: lirtHeading1Style,
              ),
              Text(
                lirtHeading2,
                style: lirtHeading2Style,
              ),
              Text(
                lirtBodyText,
                style: lirtBodyTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              lirtCheckBoxOrEmpty,
            ],
          ),
        ),
      ],
    );
  }
}

//Row used to display the Centered Description (without images) boxes.
class DescriptionRowCentered extends StatelessWidget {
  const DescriptionRowCentered({
    super.key,
    required this.centeredHeading1,
    required this.centeredHeading2,
    required this.centeredBodyText,
  });

  final String centeredHeading1;
  final String centeredHeading2;
  final String centeredBodyText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.expand_circle_down_rounded,
          size: 150,
          color: kMoonlightBlue,
        ),
        Text(
          centeredHeading1,
          style: vCenteredDescriptionHeading1Style,
        ),
        Text(
          centeredHeading2,
          style: vCenteredDescriptionHeading2Style,
        ),
        Text(
          centeredBodyText,
          style: vCenteredDescriptionBodyStyle,
        ),
      ],
    );
  }
}

//Row used to display RILT - RightImageLeftText boxes.
//(Used in: Home>InsideBlackWave, etc).
class DescriptionRowRILT extends StatelessWidget {
  const DescriptionRowRILT({
    super.key,
    required this.imageOrContainer,
    required this.riltHeading1,
    required this.riltHeading1Style,
    required this.riltHeading2,
    required this.riltHeading2Style,
    required this.riltBodyText,
    required this.riltBodyTextStyle,
    required this.onLearnMoreTapped,
    required this.learnMoreButtonHeight,
    required this.learnMoreButtonWidth,
    required this.learnMoreButtonTextStyle,
  });

  final Widget imageOrContainer;
  final String riltHeading1;
  final TextStyle riltHeading1Style;
  final String riltHeading2;
  final TextStyle riltHeading2Style;
  final String riltBodyText;
  final TextStyle riltBodyTextStyle;
  final Function() onLearnMoreTapped;
  final double learnMoreButtonHeight;
  final double learnMoreButtonWidth;
  final TextStyle learnMoreButtonTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                riltHeading1,
                style: riltHeading1Style,
              ),
              Text(
                riltHeading2,
                style: riltHeading2Style,
              ),
              Text(
                riltBodyText,
                style: riltBodyTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Button(
                    onTap: onLearnMoreTapped,
                    buttonHeight: learnMoreButtonHeight,
                    buttonWidth: learnMoreButtonWidth,
                    buttonColour: kMoonlightGreen,
                    buttonChild: Text(
                      'Learn More',
                      style: learnMoreButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        imageOrContainer,
      ],
    );
  }
}

//Used to make the individual cards that fit inside BottomCardRow.
// (Towards the lower end of the website).
class BottomCard extends StatelessWidget {
  const BottomCard({
    super.key,
    required this.bottomCardTitle,
    required this.bottomCardTitleStyle,
    required this.bottomCardSubTitle,
    required this.bottomCardSubTitleStyle,
    required this.iconSize,
  });

  final String bottomCardTitle;
  final TextStyle bottomCardTitleStyle;
  final String bottomCardSubTitle;
  final TextStyle bottomCardSubTitleStyle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.square_rounded,
              size: iconSize,
              color: kMoonlightBlue,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                bottomCardTitle,
                style: bottomCardTitleStyle,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                bottomCardSubTitle,
                style: bottomCardSubTitleStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Used to display BottomCardRow (Towards the lower end of the website).
class BottomCardRow extends StatelessWidget {
  const BottomCardRow(
      {super.key,
      required this.cardOneTitle,
      required this.cardOneTitleStyle,
      required this.cardOneSubtitle,
      required this.cardOneSubTitleStyle,
      required this.cardTwoTitle,
      required this.cardTwoTitleStyle,
      required this.cardTwoSubtitle,
      required this.cardTwoSubTitleStyle,
      required this.cardThreeTitle,
      required this.cardThreeTitleStyle,
      required this.cardThreeSubtitle,
      required this.cardThreeSubTitleStyle,
      required this.iconSize});

  final String cardOneTitle;
  final TextStyle cardOneTitleStyle;
  final String cardOneSubtitle;
  final TextStyle cardOneSubTitleStyle;
  final String cardTwoTitle;
  final TextStyle cardTwoTitleStyle;
  final String cardTwoSubtitle;
  final TextStyle cardTwoSubTitleStyle;
  final String cardThreeTitle;
  final TextStyle cardThreeTitleStyle;
  final String cardThreeSubtitle;
  final TextStyle cardThreeSubTitleStyle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: BottomCard(
            bottomCardTitle: cardOneTitle,
            bottomCardTitleStyle: cardOneTitleStyle,
            bottomCardSubTitle: cardOneSubtitle,
            bottomCardSubTitleStyle: cardOneSubTitleStyle,
            iconSize: iconSize,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: BottomCard(
            bottomCardTitle: cardTwoTitle,
            bottomCardTitleStyle: cardTwoTitleStyle,
            bottomCardSubTitle: cardTwoSubtitle,
            bottomCardSubTitleStyle: cardTwoSubTitleStyle,
            iconSize: iconSize,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: BottomCard(
            bottomCardTitle: cardThreeTitle,
            bottomCardTitleStyle: cardThreeTitleStyle,
            bottomCardSubTitle: cardThreeSubtitle,
            bottomCardSubTitleStyle: cardThreeSubTitleStyle,
            iconSize: iconSize,
          ),
        ),
      ],
    );
  }
}

//This Row is used to display the number of downloads and services completed by our company.
//Stats display Row (Used towards the bottom of the page).
class BottomStatsRow extends StatelessWidget {
  const BottomStatsRow({
    super.key,
    required this.statsTextColour,
    required this.statsBarCountSize,
    required this.statsBarCountUnitSize,
  });

  final Color statsTextColour;
  final double statsBarCountSize;
  final double statsBarCountUnitSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                '1K+',
                style: GoogleFonts.ptSans(
                  fontSize: statsBarCountSize,
                  color: statsTextColour,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                ' Users',
                style: GoogleFonts.ptSans(
                  fontSize: statsBarCountUnitSize,
                  color: statsTextColour,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                '650+',
                style: GoogleFonts.ptSans(
                  fontSize: statsBarCountSize,
                  color: statsTextColour,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Downloads',
                style: GoogleFonts.ptSans(
                  fontSize: statsBarCountUnitSize,
                  color: statsTextColour,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                '200+',
                style: GoogleFonts.ptSans(
                  fontSize: statsBarCountSize,
                  color: statsTextColour,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Fitness videos',
                style: GoogleFonts.ptSans(
                  fontSize: statsBarCountUnitSize,
                  color: statsTextColour,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Row used to display "Created by : Moonlight" text in the bottom of the page.
class BottomCreditsBar extends StatelessWidget {
  const BottomCreditsBar({
    super.key,
    required this.creditsBarColour,
  });

  final Color creditsBarColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      color: creditsBarColour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Developed by : $kDevelopedBy',
              style: vBottomCreditsTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

//Row to display plans and pricing info in Plans page.
class PlansPricingCardRow extends StatelessWidget {
  const PlansPricingCardRow({
    super.key,
    required this.planNameStyle,
    required this.planAmountStyle,
    required this.planInfoStyle,
    required this.rowIconSize,
    required this.rowLabelStyle,
    required this.onFirstButtonTap,
    required this.onSecondButtonTap,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonTextStyle,
  });

  final TextStyle planNameStyle;
  final TextStyle planAmountStyle;
  final TextStyle planInfoStyle;

  final double rowIconSize;
  final TextStyle rowLabelStyle;

  final Function() onFirstButtonTap;
  final Function() onSecondButtonTap;
  final double buttonHeight;
  final double buttonWidth;
  final TextStyle buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black, //New
                      blurRadius: 25.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic',
                        style: planNameStyle,
                      ),
                      Text(
                        '\$499',
                        style: planAmountStyle,
                      ),
                      Text(
                        'Basic Card Info',
                        style: planInfoStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckIconWithText(
                        iconSize: rowIconSize,
                        rowlabel: 'Online Platform',
                        rowLabelStyle: rowLabelStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckIconWithText(
                        iconSize: rowIconSize,
                        rowlabel: 'Free Ads',
                        rowLabelStyle: rowLabelStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckIconWithText(
                        iconSize: rowIconSize,
                        rowlabel: 'Unlimited Fun',
                        rowLabelStyle: rowLabelStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Button(
                              onTap: onFirstButtonTap,
                              buttonColour: kMoonlightGreen,
                              buttonHeight: buttonHeight,
                              buttonWidth: buttonWidth,
                              buttonChild: Text(
                                'Buy Basic Plan',
                                style: buttonTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black, //New
                      blurRadius: 25.0,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pro Plus',
                        style: planNameStyle,
                      ),
                      Text(
                        '\$899',
                        style: planAmountStyle,
                      ),
                      Text(
                        'Pro Plus Card Info',
                        style: planInfoStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckIconWithText(
                        iconSize: rowIconSize,
                        rowlabel: 'Online Platform',
                        rowLabelStyle: rowLabelStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckIconWithText(
                        iconSize: rowIconSize,
                        rowlabel: 'Free Ads',
                        rowLabelStyle: rowLabelStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckIconWithText(
                        iconSize: rowIconSize,
                        rowlabel: 'Unlimited Fun',
                        rowLabelStyle: rowLabelStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Button(
                              onTap: onSecondButtonTap,
                              buttonColour: kMoonlightGreen,
                              buttonHeight: buttonHeight,
                              buttonWidth: buttonWidth,
                              buttonChild: Text(
                                'Buy Pro Plus Plan',
                                style: buttonTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//Description Text row used in privacy policy page.
class PPDescriptionRow extends StatelessWidget {
  const PPDescriptionRow({
    super.key,
    required this.ppHeadingText,
    required this.ppHeadingTextStyle,
    required this.ppBodyText,
    required this.ppBodyTextStyle,
  });

  final String ppHeadingText;
  final TextStyle ppHeadingTextStyle;
  final String ppBodyText;
  final TextStyle ppBodyTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                ppHeadingText,
                style: ppHeadingTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                ppBodyText,
                style: ppBodyTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Widget used to make bullet points (mostly used in privacy policy page).
class PPBulletPoint extends StatelessWidget {
  const PPBulletPoint({
    super.key,
    required this.bulletHeading,
    required this.bulletHeadingStyle,
    required this.bulletBody,
    required this.bulletBodyStyle,
  });

  final String bulletHeading;
  final TextStyle bulletHeadingStyle;
  final String bulletBody;
  final TextStyle bulletBodyStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.circle,
          color: kMoonlightBlack,
          size: 5,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          bulletHeading,
          style: bulletHeadingStyle,
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: Text(bulletBody, style: bulletBodyStyle),
        ),
      ],
    );
  }
}

//Privacy policy body contents.
class PrivacyPolicyBody extends StatelessWidget {
  const PrivacyPolicyBody({
    super.key,
    required this.paddingLeft,
    required this.paddingRight,
    required this.bulletHeadingStyle,
    required this.bulletBodyStyle,
    required this.titleTextStyle,
    required this.bodyTextStyle,
  });

  final double paddingLeft;
  final double paddingRight;
  final TextStyle titleTextStyle;
  final TextStyle bodyTextStyle;
  final TextStyle bulletHeadingStyle;
  final TextStyle bulletBodyStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kMoonlightWhite,
      padding: EdgeInsets.only(left: paddingLeft, right: paddingRight),
      child: Column(
        children: [
          PPDescriptionRow(
            ppHeadingText: 'Definitions and key terms',
            ppBodyText: 'For this Privacy Policy:',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Company:',
            bulletBody:
            'When this policy mentions "Company," "we," "us," or "our," it refers to Parmar Empire, 96, Sector-5 Gurgaon, Haryana that is responsible for your information under this Privacy Policy.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Country:',
            bulletBody:
            'Where Plnrevelry.com or the owners/founders of Plnrevelry.com are based, in this case, India.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Cookie:',
            bulletBody:
            'Small amount of data generated by a website and saved by your web browser. It is used to identify your browser, provide analytics, and remember information about you such as your language preference or login information.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Customer:',
            bulletBody:
            'Refers to the company, organization or person that signs up to use the Plnrevelry.com Service to manage the relationships with your consumers or service users.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Device:',
            bulletBody:
            'Any internet connected device such as a phone, tablet, computer or any other device that can be used to visit Plnrevelry.com and use the services.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'IP address:',
            bulletBody:
            'Every device connected to the Internet is assigned an address known as an Internet protocol (IP) address. These numbers are usually assigned in geographic blocks. An IP address can often be used to identify the location from which a device is connecting to the Internet.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Personnel:',
            bulletBody:
            'Refers to those individuals who are employed by Plnrevelry.com or are under contract to perform a service on behalf of one of the parties.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Personal Data:',
            bulletBody:
            'Any information that directly, indirectly, or in connection with other information — including a personal.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Identification Number:',
            bulletBody:
            'Allows for the identification or identifiable of a natural person.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Service:',
            bulletBody:
            'Refers to the service provided by Plnrevelry.com as described in the relative terms (if available) and on this platform.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Third-party service:',
            bulletBody:
            'Refers to advertisers, contest sponsors, promotional and marketing partners, and others who provide our content or whose products or services we think may interest you.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Website:',
            bulletBody:
            'Plnrevelry.com\'s site, which can be accessed via this URL: plnrevelry.com.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'You:',
            bulletBody:
            'A person or entity that is registered with Plnrevelry.com to use the Services.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'What Information Do We Collect?',
            ppBodyText:
            'We collect information from you when you visit our service, register, place an order, subscribe to our newsletter, respond to a survey or fill out a form.'
                ' We also collect information from mobile devices for a better user experience, although these features are completely optional.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Name / Username',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Password',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Age',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Phone Numbers',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Email Addresses',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Mailing Addresses',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Billing Addresses',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Job Titles',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'How Do We Use The Information We Collect?',
            ppBodyText:
            'Any of the information we collect from you may be used in one of the following ways:',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'To personalize your experience (your information helps us to better respond to your individual needs)',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'To improve our service (we continually strive to improve our service offerings based on the information and feedback we receive from you)',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'To improve customer service (your information helps us to more effectively respond to your customer service requests and support needs).',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'To process transactions.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'To administer a contest, promotion, survey or other site feature.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'To send periodic emails.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPDescriptionRow(
            ppHeadingText:
            'When do we use customer information from third parties?',
            ppBodyText:
            'We receive some information from the third parties when you contact us.'
                ' For example, when you submit your email address to us to show interest in becoming our customer, we receive information from a third party that provides automated fraud detection services to us.'
                ' We also occasionally collect information that is made publicly available on social media websites.'
                ' You can control how much of your information social media websites make public by visiting these websites and changing your privacy settings.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText:
            'Do we share the information we collect with third parties?',
            ppBodyText:
            'We may share the information that we collect, both personal and non-personal, with third parties such as advertisers, contest sponsors, promotional and marketing partners, and others who provide our content or whose products or services we think may interest you. '
                ' We may also share it with our current and future affiliated companies and business partners, and if we are involved in a merger, asset sale or other business reorganization, we may also share or transfer your personal and non-personal information to our successors-in-interest.'
                ' We may engage trusted third party service providers to perform functions and provide services to us, such as hosting and maintaining our servers and our service,'
                ' database storage and management, e-mail management, storage marketing, credit card processing, customer service and fulfilling orders for products and services you may purchase through our platform. '
                ' We will likely share your personal information, and possibly some non-personal information, with these third parties to enable them to perform these services for us and for you.'
                ' We may share portions of our log file data, including IP addresses, for analytics purposes with third parties such as web analytics partners, application developers, and ad networks.'
                ' If your IP address is shared, it may be used to estimate general location and other techno-graphics such as connection speed, whether you have visited the service in a shared location, and type of device used to visit the service.'
                ' They may aggregate information about our advertising and what you see on the service and then provide auditing, research and reporting for us and our advertisers. '
                ' We may also disclose personal and non-personal information about you to government or law enforcement officials or private parties as we, in our sole discretion, believe necessary or appropriate in order to respond to claims, legal process (including subpoenas), to protect our rights and interests or those of a third party,'
                ' the safety of the public or any person, to prevent or stop any illegal, unethical, or legally actionable activity, or to otherwise comply with applicable court orders, laws, rules and regulations.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText:
            'Could my information be transferred to other countries?',
            ppBodyText: 'We are incorporated in India.'
                'Information collected via our website, through direct interactions with you, or from use of our help services may be transferred from time to time to our offices or personnel, or to third parties, located throughout the world, and may be viewed and hosted anywhere in the world,'
                ' including countries that may not have laws of general applicability regulating the use and transfer of such data.'
                ' To the fullest extent allowed by applicable law, by using any of the above, you voluntarily consent to the trans- border transfer and hosting of such information.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText:
            'Is the information collected through our service secure?',
            ppBodyText:
            'We take precautions to protect the security of your information.'
                ' We have physical, electronic, and managerial procedures to help safeguard, prevent unauthorized access, maintain data security, and correctly use your information.'
                ' However, neither people nor security systems are foolproof, including encryption systems.'
                ' In addition, people can commit intentional crimes, make mistakes or fail to follow policies.'
                ' Therefore, while we use reasonable efforts to protect your personal information, we cannot guarantee its absolute security. '
                ' If applicable law imposes any non-disclaim able duty to protect your personal information, you agree that intentional misconduct will be the standards used to measure our compliance with that duty.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Can I update or correct my information?',
            ppBodyText:
            'The rights you have to request updates or corrections to the information we collect depend on your relationship with us. '
                ' Personnel may update or correct their information as detailed in our internal company employment policies.'
                ' Customers have the right to request the restriction of certain uses and disclosures of personally identifiable information as follows.'
                ' You can contact us in order to (1) update or correct your personally identifiable information, (2) change your preferences with respect to communications and other information you receive from us,'
                ' or (3) delete the personally identifiable information maintained about you on our systems (subject to the following paragraph), by cancelling your account.'
                ' Such updates, corrections, changes and deletions will have no effect on other information that we maintain, or information that we have provided to third parties in accordance with this Privacy Policy prior to such update, correction, change or deletion.'
                ' To protect your privacy and security, we may take reasonable steps (such as requesting a unique password) to verify your identity before granting you profile access or making corrections.'
                ' You are responsible for maintaining the secrecy of your unique password and account information at all times.'
                ' You should be aware that it is not technologically possible to remove each and every record of the information you have provided to us from our system.'
                ' The need to back up our systems to protect information from inadvertent loss means that a copy of your information may exist in a non-erasable form that will be difficult or impossible for us to locate.'
                ' Promptly after receiving your request, all personal information stored in databases we actively use, and other readily searchable media will be updated, corrected, changed or deleted, as appropriate, as soon as and to the extent reasonably and technically practicable.'
                ' If you are an end user and wish to update, delete, or receive any information we have about you, you may do so by contacting the organization of which you are a customer.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Personnel',
            ppBodyText:
            'If you are one of our workers or applicants, we collect information you voluntarily provide to us.'
                ' We use the information collected for Human Resources purposes in order to administer benefits to workers and screen applicants.'
                ' You may contact us in order to (1) update or correct your information, (2) change your preferences with respect to communications and other information you receive from us, or (3) receive a record of the information we have relating to you.'
                ' Such updates, corrections, changes and deletions will have no effect on other information that we maintain, or information that we have provided to third parties in accordance with this Privacy Policy prior to such update, correction, change or deletion.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Sale of Business',
            ppBodyText:
            'We reserve the right to transfer information to a third party in the event of a sale,'
                ' merger or other transfer of all or substantially all of the assets of us or any of its Corporate Affiliates (as defined herein), or that portion of us or any of its Corporate Affiliates to which the Service relates,'
                ' or in the event that we discontinue our business or file a petition or have filed against us a petition in bankruptcy, reorganization or similar proceeding, provided that the third party agrees to adhere to the terms of this Privacy Policy.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Affiliates',
            ppBodyText:
            'We may disclose information (including personal information) about you to our Corporate Affiliates.'
                ' For purposes of this Privacy Policy, "Corporate Affiliate" means any person or entity which directly or indirectly controls, is controlled by or is under common control with us, whether by ownership or otherwise.'
                ' Any information relating to you that we provide to our Corporate Affiliates will be treated by those Corporate Affiliates in accordance with the terms of this Privacy Policy.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'How Long Do We Keep Your Information?',
            ppBodyText:
            'We keep your information only so long as we need it to provide service to you and fulfil the purposes described in this policy.'
                ' This is also the case for anyone that we share your information with and who carries out services on our behalf.'
                ' When we no longer need to use your information and there is no need for us to keep it to comply with our legal or regulatory obligations, we\'ll either remove it from our systems or depersonalize it so that we can\'t identify you.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'How Do We Protect Your Information?',
            ppBodyText:
            'We implement a variety of security measures to maintain the safety of your personal information when you place an order or enter, submit, or access your personal information.'
                ' We offer the use of a secure server.'
                ' All supplied sensitive/credit information is transmitted via Secure Socket Layer (SSL) technology and then encrypted into our Payment gateway providers database only to be accessible by those authorized with special access rights to such systems, and are required to keep the information confidential.'
                ' After a transaction, your private information (credit cards, social security numbers, financials, etc.) is never kept on file.'
                ' We cannot, however, ensure or warrant the absolute security of any information you transmit to us or guarantee that your information on the Service may not be accessed, disclosed, altered, or destroyed by a breach of any of our physical, technical, or managerial safeguards.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Governing Law',
            ppBodyText:
            'The laws of India, excluding its conflicts of law rules, shall govern this Agreement and your use of our service.'
                ' Your use of our service may also be subject to other local, state, national, or international laws.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Your Consent',
            ppBodyText:
            'By using our service, registering an account, or making a purchase, you consent to this Privacy Policy.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Links to Other Websites',
            ppBodyText: 'This Privacy Policy applies only to the Services.'
                ' The Services may contain links to other websites not operated or controlled by.'
                ' We are not responsible for the content, accuracy or opinions expressed in such websites, and such websites are not investigated, monitored or checked for accuracy or completeness by us.'
                ' Please remember that when you use a link to go from the Services to another website, our Privacy Policy is no longer in effect.'
                ' Your browsing and interaction on any other website, including those that have a link on our platform, is subject to that website\'s own rules and policies.'
                ' Such third parties may use their own cookies or other methods to collect information about you.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Cookies',
            ppBodyText:
            'We use "Cookies" to identify the areas of our website that you have visited.'
                ' A Cookie is a small piece of data stored on your computer or mobile device by your web browser.'
                ' We use Cookies to personalize the Content that you see on our website.'
                ' Most web browsers can be set to disable the use of Cookies.'
                ' However, if you disable Cookies, you may not be able to access functionality on our website correctly or at all.'
                ' We never place Personally Identifiable Information in Cookies.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Advertising',
            ppBodyText:
            'Advertising keeps us and many of the websites and services you use free of charge.'
                ' We work hard to make sure that ads are safe, unobtrusive, and as relevant as possible.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Cookies for Advertising',
            ppBodyText: 'Cookies help to make advertising more effective.'
                ' Without cookies, it\'s really hard for an advertiser to reach its audience, or to know how many ads were shown and how many clicks they received.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Payment Details',
            ppBodyText:
            'In respect to any credit card or other payment processing details you have provided us,'
                ' we commit that this confidential information will be stored in the most secure manner possible.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Kids\' Privacy',
            ppBodyText: 'We do not address anyone under the age of 13.'
                ' We do not knowingly collect personally identifiable information from anyone under the age of 13.'
                ' If you are a parent or guardian and you are aware that your child has provided Us with Personal Data, please contact Us.'
                ' If we become aware that we have collected Personal Data from anyone under the age of 13 without verification of parental consent, we take steps to remove that information from our servers.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Changes to Our Privacy Policy',
            ppBodyText:
            'If we decide to change our privacy policy, we will post those changes on this page, and/or update the Privacy Policy modification date below.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Third-Party Services',
            ppBodyText:
            'We may display, include or make available third-party content (including data, information, applications and other products services) or provide links to third-party websites or services ("Third-Party Services").'
                ' You acknowledge and agree that we shall not be responsible for any Third-Party Services, including their accuracy, completeness, timeliness, validity, copyright compliance, legality, decency, quality or any other aspect thereof.'
                ' We do not assume and shall not have any liability or responsibility to you or any other person or entity for any Third-Party Services.'
                ' Third-Party Services and links thereto are provided solely as a convenience to you and you access and use them entirely at your own risk and subject to such third parties\' terms and conditions.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Facebook Pixel',
            ppBodyText:
            'Facebook pixel is an analytics tool that allows you to measure the effectiveness of your advertising by understanding the actions people take on your website.'
                ' You can use the pixel to: Make sure your ads are shown to the right people. Facebook pixel may collect information from your device when you use the service.'
                ' Facebook pixel collects information that is held in accordance with its Privacy Policy.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Tracking Technologies',
            ppBodyText: 'We use the following technologies: ',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Cookies',
            bulletBody:
            'We use cookies to enhance the performance and functionality of our service but are non-essential to their use.'
                ' However, without these cookies, certain functionality like videos may become unavailable or you would be required to enter your login details every time you visit our service as'
                ' we would not be able to remember that you had logged in previously.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Local Storage',
            bulletBody:
            'Local Storage sometimes known as DOM storage provides web apps with methods and protocols for storing client-side data.'
                ' Web storage supports persistent data storage,'
                ' similar to cookies but with a greatly enhanced capacity and no information stored in the HTTP request header.st',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'Sessions',
            bulletBody:
            'We use "Sessions" to identify the areas of our website that you have visited.'
                ' A Session is a small piece of data stored on your computer or mobile device by your web browser.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPDescriptionRow(
            ppHeadingText:
            'Information about General Data Protection Regulation (GDPR)',
            ppBodyText:
            'We may be collecting and using information from you if you are from the European Economic Area (EEA), and in this section of our Privacy Policy we are going to explain exactly how and why this data is collected,'
                ' and how we maintain this data under protection from being replicated or used in the wrong way.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'What is GDPR?',
            ppBodyText:
            'GDPR is an EU-wide privacy and data protection law that regulates how EU residents\' data is protected by companies and enhances the control the EU residents have over their personal data.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'What is personal data?',
            ppBodyText:
            'Any data that relates to an identifiable or identified individual.'
                ' GDPR covers a broad spectrum of information that could be used on its own, or in combination with other pieces of information, to identify a person.'
                ' Personal data extends beyond a person\'s name or email address.'
                ' Some examples include financial information, political opinions, genetic data, biometric data, IP addresses, physical address, sexual orientation, and ethnicity.'
                ' The Data Protection Principles include requirements such as:',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody: 'Personal data collected must be processed in a fair,'
                ' legal, and transparent way and should only be used in a way that a person would reasonably expect.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'Personal data should only be collected to fulfil a specific purpose and it should only be used for that purpose.'
                ' Organizations must specify why they need the personal data when they collect it.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'Personal data should be held no longer than necessary to fulfil its purpose.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPBulletPoint(
            bulletHeading: '',
            bulletBody:
            'People covered by the GDPR have the right to access their own personal data.'
                ' They can also request a copy of their data, and that their data be updated, deleted, restricted, or moved to another organization.',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Why is GDPR important?',
            ppBodyText:
            'GDPR adds some new requirements regarding how companies should protect individuals\' personal data that they collect and process.'
                ' It also raises the stakes for compliance by increasing enforcement and imposing greater fines for breach. Beyond these facts it\'s simply the right thing to do.'
                ' At Help Scout we strongly believe that your data privacy is very important and we already have solid security and privacy practices in place that go beyond the requirements of this new regulation.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText:
            'Individual Data Subject\'s Rights - Data Access, Portability and Deletion',
            ppBodyText:
            'We are committed to helping our customers meet the data subject rights requirements of GDPR.'
                ' We process or store all personal data in fully vetted, DPA compliant vendors.'
                ' We do store all conversation and personal data for up to 6 years unless your account is deleted.'
                ' In which case, we dispose of all data in accordance with our Terms of Service and Privacy Policy, but we will not hold it longer than 60 days.'
                ' We are aware that if you are working with EU customers, you need to be able to provide them with the ability to access, update, retrieve and remove personal data.'
                ' We got you! We\'ve been set up as self-service from the start and have always given you access to your data and your customers data.'
                ' Our customer support team is here for you to answer any questions you might have about working with the API.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPDescriptionRow(
            ppHeadingText: 'Contact Us',
            ppBodyText:
            'Don\'t hesitate to contact us if you have any questions.',
            ppHeadingTextStyle: titleTextStyle,
            ppBodyTextStyle: bodyTextStyle,
          ),
          PPBulletPoint(
            bulletHeading: 'via Email:',
            bulletBody: 'customer.support@plnrevelry.com',
            bulletHeadingStyle: bulletHeadingStyle,
            bulletBodyStyle: bulletBodyStyle,
          ),
          const SizedBox(
            height: 40,
          ),
          const BottomCreditsBar(creditsBarColour: kMoonlightWhite),
        ],
      ),
    );
  }
}
