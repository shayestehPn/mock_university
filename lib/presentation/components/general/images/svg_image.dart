import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../../../../utils/constants.dart';

class SvgImage {
  static final Widget backIcon =
      SvgPicture.asset("${svgImagesLocation}back.svg");

  static final Widget homeSelectedIcon =
      SvgPicture.asset("${svgImagesLocation}home.svg", color: mainColor);

  static final Widget homeUnSelectedIcon = SvgPicture.asset(
    "${svgImagesLocation}home.svg",
    color: const Color(0xff808080),
  );

  static final Widget searchSelectedIcon = SvgPicture.asset(
    "${svgImagesLocation}search.svg",
    color: mainColor,
  );

  static final Widget searchUnSelectedIcon = SvgPicture.asset(
      "${svgImagesLocation}search.svg",
      color: const Color(0xff808080));

  static final Widget examsSelectedIcon = SvgPicture.asset(
    "${svgImagesLocation}exams.svg",
    color: mainColor,
  );

  static final Widget examsUnSelectedIcon = SvgPicture.asset(
      "${svgImagesLocation}exams.svg",
      color: const Color(0xff808080));

  static final Widget wishListSelectedIcon = SvgPicture.asset(
    "${svgImagesLocation}wishlist.svg",
    color: mainColor,
  );

  static final Widget wishListUnSelectedIcon = SvgPicture.asset(
      "${svgImagesLocation}wishlist.svg",
      color: const Color(0xff808080));

  static final Widget accountSelectedIcon = SvgPicture.asset(
    "${svgImagesLocation}account.svg",
    color: mainColor,
  );

  static final Widget accountUnSelectedIcon = SvgPicture.asset(
      "${svgImagesLocation}account.svg",
      color: const Color(0xff808080));
}
