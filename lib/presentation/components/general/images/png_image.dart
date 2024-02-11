import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class PngImage {
  static final Image learningImage =
      Image.asset("${pngImagesLocation}learning.png", fit: BoxFit.fill);

  static final Image examImage =
      Image.asset("${pngImagesLocation}exam.png", fit: BoxFit.fill);

  static final Image timerImage =
      Image.asset("${pngImagesLocation}timer.png", fit: BoxFit.fill);

  static final Image handShakeImage =
      Image.asset("${pngImagesLocation}handshake.png", fit: BoxFit.fill);

  static final Image congratulationImage =
      Image.asset("${pngImagesLocation}congratulation.png", fit: BoxFit.fill);
}
