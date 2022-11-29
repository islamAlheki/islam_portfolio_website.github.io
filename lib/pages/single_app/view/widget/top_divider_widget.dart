import 'package:flutter/material.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class TopDividerWidget extends StatelessWidget {
  final Color appColor;

  const TopDividerWidget({
    Key? key,
    required this.appColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: SizeConfig.height*0.002,
      margin: EdgeInsets.only(
        top: SizeConfig.height*0.03,
        right: SizeConfig.isMobile(context)?SizeConfig.height*0.06:SizeConfig.height*0.2,
      ),
      decoration: BoxDecoration(
        color: appColor.withOpacity(0.5),
        borderRadius:BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: appColor.withOpacity(0.005),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
    );
  }
}




