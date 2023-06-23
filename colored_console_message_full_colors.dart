import 'dart:io';

main() {
  printColoredText(text: 'Hello World', color: AnsiColorCode.red);
  print('\n############################################################\n');
  printColorChart();
  print('\n************************************************************\n');
  printAllColors();
  print('\n************************************************************\n');
  printBackgroundColorChart();
  print('\n************************************************************\n');
  printAllBackgroundColors();
}

//! Foreground
/// Colored Console Message
void printColoredText({
  required String text,
  required AnsiColorCode color,
}) {
  String code = color.index.toString();
  stdout.write(
    '\x1B[38;5;${code}m${text}\x1B[0m',
  );
  print('');
}


/// All Colors Console Chart
void printColorChart() {
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 16; j++) {
      String code = (i * 16 + j).toString();

      stdout.write('\x1B[38;5;${code}m ${code}'.padRight(5));
    }
    print('\x1B[0m');
  }
}

/// All Colors Console
void printAllColors() {
  for (AnsiColorCode color in AnsiColorCode.values) {
    String code = color.index.toString();
    stdout.write(
      '\x1B[38;5;${code}m${color.toString().split('.').last}\x1B[0m',
    );
    print('');
  }
}


//! Background
/// Background Colors Text Chart
void printBackgroundColorChart() {
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 16; j++) {
      String code = (i * 16 + j).toString();
      stdout.write('\x1B[48;5;${code}m $code'.padRight(4));
    }
    print('\x1B[0m');
  }
}

/// All Background Colors Text
void printAllBackgroundColors() {
  for (AnsiColorCode color in AnsiColorCode.values) {
    String code = color.index.toString();
    stdout.write(
      '\x1B[48;5;${code}m${color.toString().split('.').last}\x1B[0m',
    );
    print('');
  }
}

enum AnsiColorCode {
  black,
  maroon,
  green,
  olive,
  navy,
  purple,
  teal,
  silver,
  gray,
  red,
  lime,
  yellow,
  blue,
  fuchsia,
  aqua,
  white,
  grey0,
  navyBlue,
  darkBlue,
  blue3,
  blue3_2,
  blue1,
  darkGreen,
  deepSkyBlue4,
  deepSkyBlue4_2,
  deepSkyBlue4_3,
  dodgerBlue3,
  dodgerBlue2,
  green4,
  springGreen4,
  turquoise4,
  deepSkyBlue3,
  deepSkyBlue3_2,
  dodgerBlue1,
  green3,
  springGreen3,
  darkCyan,
  lightSeaGreen,
  deepSkyBlue2,
  deepSkyBlue1,
  green3_2,
  springGreen3_2,
  springGreen2,
  cyan3,
  darkTurquoise,
  turquoise2,
  green1,
  springGreen2_2,
  springGreen1,
  mediumSpringGreen,
  cyan2,
  cyan1,
  darkRed,
  deepPink4,
  purple4,
  purple4_2,
  purple3,
  blueViolet,
  orange4,
  grey37,
  mediumPurple4,
  slateBlue3,
  slateBlue3_2,
  royalBlue1,
  chartreuse4,
  darkSeaGreen4,
  paleTurquoise4,
  steelBlue,
  steelBlue3,
  cornflowerBlue,
  chartreuse3,
  darkSeaGreen4_2,
  cadetBlue,
  cadetBlue_2,
  skyBlue3,
  steelBlue1,
  chartreuse3_2,
  paleGreen3,
  seaGreen3,
  aquamarine3,
  mediumTurquoise,
  steelBlue1_2,
  chartreuse2,
  seaGreen2,
  seaGreen1,
  seaGreen1_2,
  aquamarine1,
  darkSlateGray2,
  darkRed_2,
  deepPink4_2,
  darkMagenta,
  darkMagenta_2,
  darkViolet,
  purple_2,
  orange4_2,
  lightPink4,
  plum4,
  mediumPurple3,
  mediumPurple3_2,
  slateBlue1,
  yellow4,
  wheat4,
  grey53,
  lightSlateGrey,
  mediumPurple,
  lightSlateBlue,
  yellow5,
  darkOliveGreen3,
  darkSeaGreen,
  lightSkyBlue3,
  lightSkyBlue3_2,
  skyBlue2,
  chartreuse2_2,
  darkOliveGreen3_2,
  paleGreen3_2,
  darkSeaGreen3,
  darkSlateGray3,
  skyBlue1,
  chartreuse1,
  lightGreen,
  lightGreen_2,
  paleGreen1,
  aquamarine1_2,
  darkSlateGray1,
  red3,
  deepPink4_3,
  mediumVioletRed,
  magenta3,
  darkViolet_2,
  purple_3,
  darkOrange3,
  indianRed,
  hotPink3,
  mediumOrchid3,
  mediumOrchid,
  mediumPurple2,
  darkGoldenrod,
  lightSalmon3,
  rosyBrown,
  grey63,
  mediumPurple2_2,
  mediumPurple1,
  gold3,
  darkKhaki,
  navajoWhite3,
  grey69,
  lightSteelBlue3,
  lightSteelBlue,
  yellow3,
  darkOliveGreen3_3,
  darkSeaGreen3_2,
  darkSeaGreen2,
  lightCyan3,
  lightSkyBlue1,
  greenYellow,
  darkOliveGreen2,
  paleGreen2,
  darkSeaGreen2_2,
  darkSeaGreen1,
  paleTurquoise1,
  red3_2,
  deepPink3,
  deepPink3_2,
  magenta3_2,
  magenta3_3,
  magenta2,
  darkOrange3_2,
  indianRed_2,
  hotPink2,
  orchid,
  mediumOrchid1,
  orange3,
  lightSalmon3_2,
  lightPink3,
  pink3,
  plum3,
  violet,
  gold3_2,
  lightGoldenrod3,
  tan,
  mistyRose3,
  thistle3,
  plum2,
  yellow3_2,
  khaki3,
  lightGoldenrod2,
  lightYellow3,
  grey84,
  lightSteelBlue1,
  yellow2,
  darkOlive,
  Green2,
  darkSeaGreen1_2,
  honeydew2,
  lightCyan1,
  red1,
  deepPink2,
  deepPink1_2,
  deepPink1,
  magenta2_2,
  magenta1,
  orangeRed1,
  indianRed1,
  indianRed1_2,
  hotPink,
  hotPink_2,
  mediumOrchid1_2,
  darkOrange,
  salmon1,
  lightCoral,
  paleVioletRed1,
  orchid2,
  orchid1,
  orange1,
  sandyBrown,
  lightSalmon1,
  lightPink1,
  pink1,
  plum1,
  gold1,
  lightGoldenrod2_2,
  lightGoldenrod2_3,
  navajoWhite1,
  mistyRose1,
  thistle1,
  yellow1,
  lightGoldenrod1,
  khaki1,
  wheat1,
  cornsilk1,
  grey100,
  grey3,
  grey7,
  grey11,
  grey15,
  grey19,
  grey23,
  grey27,
  grey30,
  grey35,
  grey39,
  grey42,
  grey46,
  grey50,
  grey54,
  grey58,
  grey62,
  grey66,
  grey70,
  grey74,
  grey78,
  grey82,
  grey85,
  grey89,
  grey93
}
