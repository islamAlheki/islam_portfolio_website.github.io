import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/portfolio/model/project_item_model.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/custom_image_network.dart';

class AppMainPreviewCardWidget extends StatelessWidget {
  final Color appMainColor;
  final String mainPreviewImage;
  final List<PlatformItemModel> platformsList;

  const AppMainPreviewCardWidget({
    Key? key,
    required this.appMainColor,
    required this.mainPreviewImage,
    required this.platformsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shapeCardHeight=SizeConfig.height*0.35;
    final shapeCardWidth=SizeConfig.height*0.14;
    return  Container(
      alignment: Alignment.center,
      height: SizeConfig.height*0.35,
      ///* second color
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15,),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [

          /// card
          SizedBox(
            height: shapeCardHeight,
            width: shapeCardWidth,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                /// white card
                Container(
                  margin: EdgeInsets.only(
                    top: SizeConfig.height*0.05,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConfig().cardWhiteColor(1),
                    borderRadius: BorderRadius.circular(15,),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConfig().cardGrey1Color(0.6),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 5), // changes position of shadow
                      ),
                    ],

                  ),
                ),


                /// app color shape card
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: SizeConfig.height*0.07),
                    child: SvgPicture.asset(
                      'assets/images/card_vector.svg',
                      color: appMainColor,
                    ),
                  ),
                ),

                // Center(
                //   child: Container(
                //     margin: EdgeInsets.only(bottom: SizeConfig.height*0.07),
                //     decoration: BoxDecoration(
                //       color: appMainColor,
                //       borderRadius: BorderRadius.only(
                //         topRight: const Radius.circular(25,),
                //         topLeft: Radius.elliptical(
                //           shapeCardWidth * 3,
                //           shapeCardHeight * .71,
                //         ),
                //         bottomLeft:const Radius.circular(0,),
                //         bottomRight: Radius.elliptical(
                //           shapeCardWidth * 3.8,
                //           shapeCardHeight * 2.9,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

          // shadow
          Container(
            width: SizeConfig.height*0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15,),
              boxShadow: [
                BoxShadow(
                  color: ColorConfig().cardGrey1Color(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],

            ),
            margin: EdgeInsets.only(
              left: SizeConfig.height*0.05,
              top:SizeConfig.height*0.05,
              bottom:SizeConfig.height*0.01,
            ),
          ),

          /// image
          Container(
            margin: EdgeInsets.only(
              left: SizeConfig.height*0.05,
              top:SizeConfig.height*0.05,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: CustomImageNetwork(
                image:mainPreviewImage.toString(),
                fit: BoxFit.cover,
                loadingColor: appMainColor,
                errorBackground: appMainColor,
                errorImage: 'image_null.png',
                errorFit: BoxFit.cover,
                errorImageSize: SizeConfig.height*0.04,
                errorPadding: EdgeInsets.only(bottom: SizeConfig.height * 0.0),
              ),
            ),
          ),

          /// platforms
          Container(
            margin: EdgeInsets.only(
              left: SizeConfig.height*0.01,
              bottom:SizeConfig.height*0.12,
              top:SizeConfig.height*0.07,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(platformsList.length, (index) {
                return Expanded(
                  child: SizedBox(
                    width: SizeConfig.height*0.035,
                    height: SizeConfig.height*0.035,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          platformsList[index].platformIcon.toString(),
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),

    );
  }
}



// class AppMainPreviewCardWidget extends StatelessWidget {
//   final Color appMainColor;
//   final String mainPreviewImage;
//   final List<PlatformItemModel> platformsList;
//
//   const AppMainPreviewCardWidget({
//     Key? key,
//     required this.appMainColor,
//     required this.mainPreviewImage,
//     required this.platformsList,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Expanded(
//           child: SvgPicture.network(
//             mainPreviewImage,
//             width: SizeConfig.height*0.35,
//             fit: BoxFit.contain,
//
//           ),
//         ),
//       ],
//     );
//   }
// }


