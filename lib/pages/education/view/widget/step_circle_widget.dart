import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class StepCircleWidget extends StatelessWidget {
  final bool active;
  const StepCircleWidget({Key? key,required this.active,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: SizeConfig.height*0.03,
          height:SizeConfig.height*0.03 ,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConfig().cardOrangeColor(0.3),
            boxShadow: [
              BoxShadow(
                color: ColorConfig().cardOrangeColor(0.02),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Container(
              width: SizeConfig.height*0.015,
              height:SizeConfig.height*0.015 ,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConfig().cardOrangeColor(0.7),
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.height*0.022,
        ),
      ],
    );
  }
}
