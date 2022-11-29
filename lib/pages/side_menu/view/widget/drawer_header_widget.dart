import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/custom_image_network.dart';
import 'package:provider/provider.dart';

class DrawerHeaderWidget extends StatelessWidget {
  final String logo;
  final String userName;
  final String titleJob;
  final String framework;
  final bool largeHeader;
  const DrawerHeaderWidget({Key? key,required this.largeHeader,required this.logo,required this.userName,required this.titleJob,required this.framework,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.height*0.0,
        right: SizeConfig.height*0.0,
        top: SizeConfig.height*0.052,
        bottom: SizeConfig.height*0.03,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              // logo
              Container(
                height: SizeConfig.height*0.08,
                width: SizeConfig.height*0.08,
                margin: EdgeInsets.all(SizeConfig.height*0.002),
                decoration: BoxDecoration(
                  color: ColorConfig().cardGrey3Color(1),
                  borderRadius: BorderRadius.circular(18),
                ),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: CustomImageNetwork(
                    image:logo.toString(),
                    fit: BoxFit.cover,
                    loadingColor: ColorConfig().cardGrey3Color(1),
                    errorBackground: ColorConfig().cardGrey2Color(0.7),
                    errorImage: 'image_null.png',
                    errorFit: BoxFit.cover,
                    errorImageSize: SizeConfig.height*0.04,
                    errorPadding: EdgeInsets.only(bottom: SizeConfig.height * 0.0),
                  ),
                ),

              ),
              // icon
              Container(
                height: SizeConfig.height*0.015,
                width: SizeConfig.height*0.015,
                margin: EdgeInsets.only(top: SizeConfig.height*0.01),
                decoration: BoxDecoration(
                  color: ColorConfig().iconOrangeColor(1),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),

          Visibility(
            visible: largeHeader,
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.height*0.015,
                ),

                // name
                Text(
                  userName,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.height*0.015,
                ),

                // titleJob
                Text(
                  titleJob,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                ),

                // framework
                Visibility(
                  visible: framework.isNotEmpty,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: SizeConfig.height*0.015,
                        width: SizeConfig.height*0.002,
                        margin: EdgeInsets.all(SizeConfig.height*0.002),
                        decoration: BoxDecoration(
                          color: ColorConfig().cardOrangeColor(1),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.height*0.002,
                      ),
                      Text(
                        framework,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.height*0.002,
                      ),
                      Container(
                        height: SizeConfig.height*0.015,
                        width: SizeConfig.height*0.002,
                        margin: EdgeInsets.all(SizeConfig.height*0.002),
                        decoration: BoxDecoration(
                          color: ColorConfig().cardOrangeColor(1),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
