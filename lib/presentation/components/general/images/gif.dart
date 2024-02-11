import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/constants.dart';


class Gif {
  static final Widget loaderGif =
      Lottie.asset("${jsonFilesLocation}loader.json", repeat: true);

  static final Widget whiteLoaderGif =
      Lottie.asset("${jsonFilesLocation}loader_2.json", repeat: true);
}
