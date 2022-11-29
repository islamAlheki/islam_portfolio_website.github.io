import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/custom_image_network.dart';

class FeatureItemWidget extends StatelessWidget {
  final String futureName;
  final Color color;
  const FeatureItemWidget({
    Key? key,
    required this.futureName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.height*0.01,bottom: SizeConfig.height*0.02,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// icon
          Container(
            width: SizeConfig.height*0.02,
            height: SizeConfig.height*0.02,
            decoration: BoxDecoration(
              color:color,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.02),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child:Center(
              child: Icon(
                Icons.play_arrow_outlined,
                color: ColorConfig().iconWhiteColor(1),
                size: SizeConfig.height*0.01,
              ),
            ),
          ),

          SizedBox(
            width: SizeConfig.height*0.02,
          ),
          /// futureName
          Expanded(
            child:Text(
              futureName,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.normal,
                color: ColorConfig().fontBlackColor(1),
              ),
            ),
          ),


        ],
      ),
    );
  }
}

