import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/custom_image_network.dart';

class AppIconNameBioWidget extends StatelessWidget {
  final Color appColor;
  final String iconUrl;
  final String appName;
  final String appBio;
  final VoidCallback onTap;
  const AppIconNameBioWidget({
    Key? key,
    required this.appColor,
    required this.iconUrl,
    required this.appName,
    required this.appBio,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// app icon
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: SizeConfig.height*0.06,
            height: SizeConfig.height*0.06,
            decoration: BoxDecoration(
              color:appColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: appColor.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child:ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CustomImageNetwork(
                image:iconUrl.toString(),
                fit: BoxFit.cover,
                loadingColor: appColor,
                errorBackground: appColor,
                errorImage: 'image_null.png',
                errorFit: BoxFit.cover,
                errorImageSize: SizeConfig.height*0.04,
                errorPadding: EdgeInsets.only(bottom: SizeConfig.height * 0.0),
              ),
            ),
          ),
        ),

        SizedBox(
          width: SizeConfig.height*0.02,
        ),
        /// app name and bio
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app name
              Text(
                appName,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorConfig().fontBlackColor(1),
                ),
              ),

              SizedBox(
                height: SizeConfig.height*0.005,
              ),

              // appBio
              Text(
                appBio,
                textAlign: TextAlign.left,
                maxLines: 2,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorConfig().fontBlackColor(1),
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }
}

