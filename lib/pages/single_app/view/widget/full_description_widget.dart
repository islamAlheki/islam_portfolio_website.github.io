import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class FullDescriptionWidget extends StatelessWidget {
  final String fullDescription;

  const FullDescriptionWidget({
    Key? key,
    required this.fullDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
        right: SizeConfig.isMobile(context)?SizeConfig.height*0.01:SizeConfig.height*0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // title
          Text(
            'Description !',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline3!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.01,
          ),
          // description
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  fullDescription,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: ColorConfig().fontBlackColor(1),
                  ),
                ),
              ),
              Visibility(
                visible: SizeConfig.isDesktop(context),
                child: Expanded(
                  child: Container(
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}


