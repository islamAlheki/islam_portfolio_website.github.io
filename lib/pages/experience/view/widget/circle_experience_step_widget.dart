import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/custom_image_network.dart';


class CircleExperienceStepWidget extends StatelessWidget {
  final String companyLogoUrl;
  final Color indicatorColor;
  final double size;
  const CircleExperienceStepWidget({Key? key,required this.companyLogoUrl,required this.size,required this.indicatorColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: size - 15,
                  width: size - 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:indicatorColor,
                    boxShadow: [
                      BoxShadow(
                        color: indicatorColor.withOpacity(0.02),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size - 20,
                  width: size - 20,
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CustomImageNetwork(
                      image:companyLogoUrl.toString(),
                      fit: BoxFit.cover,
                      loadingColor: ColorConfig().cardGrey3Color(1),
                      errorBackground: indicatorColor,
                      errorImage: 'image_null.png',
                      errorFit: BoxFit.cover,
                      errorImageSize: SizeConfig.height*0.04,
                      errorPadding: EdgeInsets.only(bottom: SizeConfig.height * 0.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bottom line
          Container(
            height: SizeConfig.height*0.06,
            width: SizeConfig.height*0.002,
            color: indicatorColor,
          ),
        ],
      ),
    );
  }
}
