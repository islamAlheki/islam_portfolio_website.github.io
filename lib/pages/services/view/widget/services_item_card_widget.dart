import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class ServicesItemCardWidget extends StatelessWidget {
  final Color color;
  final String icon;
  final String title;
  final String description;
  const ServicesItemCardWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.height*0.023),
      margin: EdgeInsets.only(
        right: SizeConfig.height*0.0,
        left: SizeConfig.height*0.0,
      ),
      decoration: BoxDecoration(
        color:ColorConfig().cardWhiteColor(1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.03),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// icon
          Container(
            height: SizeConfig.height*0.05,
            width: SizeConfig.height*0.05,
            padding: EdgeInsets.all(SizeConfig.height*0.005),
            decoration: BoxDecoration(
              color:color,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.05),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.network(
                icon,
                color: ColorConfig().iconWhiteColor(1),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.height*0.025,
          ),
          /// count and title
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title.toString(),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorConfig().fontBlackColor(1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.height*0.001,
                ),
                // description
                Row(
                  children: [
                    Expanded(
                      child : Text(
                        description.toString(),
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.normal,
                          color: ColorConfig().fontBlackColor(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
