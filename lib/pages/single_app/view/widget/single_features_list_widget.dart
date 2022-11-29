import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/single_app/model/project_item_model.dart';
import 'package:islam_portfolio/pages/single_app/view/widget/single_feature_item_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SingleFeaturesListWidget extends StatelessWidget {
  final List<ProjectFutureItemModel> futureList;
  final Color appMainColor;

  const SingleFeaturesListWidget({
    Key? key,
    required this.futureList,
    required this.appMainColor,
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
            'App Features!',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline3!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.02,
          ),
          // description
          Row(
            children: [
              Expanded(
                child:Column(
                  children: List.generate(futureList.length, (index) {
                    return SingleFeaturesItemWidget(
                      color: appMainColor,
                      futureName:futureList[index].future ,
                    );
                  }),
                ),
              ),
            ],
          ),

          SizedBox(
            height: SizeConfig.height*0.02,
          ),
        ],
      ),
    );
  }
}


