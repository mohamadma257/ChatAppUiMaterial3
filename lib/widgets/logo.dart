import 'package:chat_material3/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/n_logo.svg',
      height: 150,
      colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
    );
  }
}
