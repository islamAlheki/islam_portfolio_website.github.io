import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class HorizontalLogoWidget extends StatelessWidget {
  final bool withHero;
  const HorizontalLogoWidget({Key? key,required this.withHero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: SizeConfig.height*0.0601,
          height:SizeConfig.height*0.0601,
          child:SvgPicture.asset(
            "assets/images/logo_icon.svg",
            fit: BoxFit.contain,
            color: ColorConfig().appMainGreen1Color(1),

            // height: height*0.2,
          ),
        ),
        SizedBox(
          width: SizeConfig.height * 0.0185,
        ),
        Visibility(
          visible: withHero,
          child: Hero(
            tag: 'logo1',
            child: SizedBox(
              width: SizeConfig.height * 0.0924,
              height:SizeConfig.height * 0.0924,
              child:SvgPicture.asset(
                "assets/images/logo_word.svg",
                fit: BoxFit.contain,
                color: ColorConfig().appMainGreen1Color(1),

                // height: height*0.2,
              ),
            ),
          ),
          replacement: SizedBox(
            width: SizeConfig.height*0.0924,
            height:SizeConfig.height*0.0924,
            child:SvgPicture.asset(
              "assets/images/logo_word.svg",
              fit: BoxFit.contain,
              color: ColorConfig().appMainGreen1Color(1),
              // height: height*0.2,
            ),
          ),
        ),
      ],
    );
  }
}


class VerticalLogoWidget extends StatelessWidget {
  final double logoImgSize;
  final double logoTextSize;

  const VerticalLogoWidget({Key? key,required this.logoImgSize,required this.logoTextSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width:logoImgSize ,
          height:logoImgSize,
          child:SvgPicture.asset(
            "assets/images/logo_icon.svg",
            fit: BoxFit.contain,
            color: ColorConfig().appMainGreen1Color(1),
            // height: height*0.2,
          ),
        ),
        Hero(
          tag: 'logo1',
          child: SizedBox(
            width: logoTextSize,
            height:logoTextSize,
            child:SvgPicture.asset(
              "assets/images/logo_word.svg",
              fit: BoxFit.contain,
              color: ColorConfig().appMainGreen1Color(1),
              // height: height*0.2,
            ),
          ),
        ),
      ],
    );
  }
}
