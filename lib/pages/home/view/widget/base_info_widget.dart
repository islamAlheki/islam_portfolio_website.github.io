import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class BaseInfoItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const BaseInfoItemWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(bottom: SizeConfig.height*0.01,),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: SizeConfig.height*0.01,
                  height: SizeConfig.height*0.01,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                ),
                SizedBox(width: SizeConfig.height*0.015),
                // title
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorConfig().fontBlackColor(1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: SizeConfig.height*0.0),
          // value
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    value,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorConfig().fontBlackColor(1),
                    ),
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

