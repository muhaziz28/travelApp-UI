import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;
double defaultBorder = 20.0;

Color kWhiteColor = Color(0xffFFFFFF);
Color kBackgroundColor = Color(0xff1A1A1A);
Color kGreyColor = Color(0xff252525);
Color kPrimaryColor = Color(0xffFEBE02);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBackgroundColor,
);
TextStyle yellowTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
