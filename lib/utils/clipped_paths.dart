import 'package:flutter/material.dart';

class WaveClipPathC1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(
      0,
      size.height * 0.6000000,
      0,
      size.height * 0.8000000,
    );
    path0.cubicTo(
      size.width * 0.0810547,
      size.height * 1.0740000,
      size.width * 0.1712891,
      size.height * 1.0140000,
      size.width * 0.2968750,
      size.height * 0.8060000,
    );
    path0.cubicTo(
        size.width * 0.4455078,
        size.height * 0.5700000,
        size.width * 0.4751953,
        size.height * 0.5850000,
        size.width * 0.5843750,
        size.height * 0.7280000);
    path0.cubicTo(
        size.width * 0.7875000,
        size.height * 1.0060000,
        size.width * 0.8515625,
        size.height * 1.0880000,
        size.width,
        size.height * 0.8560000);
    path0.quadraticBezierTo(
        size.width * 1.0023438, size.height * 0.6560000, size.width, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipPathC2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.5510200, 0, size.height * 0.4013600);
    path0.cubicTo(
        size.width * 0.1238984,
        size.height * 0.0964000,
        size.width * 0.1846719,
        size.height * 0.2269600,
        size.width * 0.2898750,
        size.height * 0.4279200);
    path0.cubicTo(
        size.width * 0.4695391,
        size.height * 0.8613600,
        size.width * 0.5586172,
        size.height * 0.8282000,
        size.width * 0.7528750,
        size.height * 0.3408800);
    path0.quadraticBezierTo(size.width * 0.8843281, size.height * 0.0295600,
        size.width, size.height * 0.3960400);
    path0.lineTo(size.width, size.height);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomDiagonalClipPath extends CustomClipper<Path> {
  //this is black diagonal container
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(0, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipPathBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(
        0, size.height * 0.2142857, 0, size.height * 0.2857143);
    path0.cubicTo(
        size.width * 0.0724141,
        size.height * 0.4565429,
        size.width * 0.1170703,
        size.height * 0.5245429,
        size.width * 0.2393047,
        size.height * 0.2847429);
    path0.cubicTo(
        size.width * 0.3758750,
        size.height * 0.0178286,
        size.width * 0.4279609,
        size.height * 0.0016571,
        size.width * 0.6199453,
        size.height * 0.2875714);
    path0.quadraticBezierTo(size.width * 0.8658672, size.height * 0.6675714,
        size.width, size.height * 0.2838286);
    path0.lineTo(size.width, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
