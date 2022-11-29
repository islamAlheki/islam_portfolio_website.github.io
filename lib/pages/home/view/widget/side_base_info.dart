import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/home/model/base_info_item_model.dart';
import 'package:islam_portfolio/pages/home/view/widget/base_info_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SideBaseInfoWidget extends StatelessWidget {
  final List<BaseInfoItem> infoList;
  final bool largeMode;

  const SideBaseInfoWidget({
    required this.infoList,
    required this.largeMode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /// title
        Text(
          'Basic Information',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline3!.copyWith(
            fontWeight: FontWeight.w600,
            color: ColorConfig().fontBlackColor(1),
          ),
        ),
        SizedBox(
          height: SizeConfig.height*0.02,
        ),

        Row(
          children: [
            Expanded(
              child:Wrap(
                spacing: SizeConfig.height*0.06,
                runSpacing: SizeConfig.height*0.008,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                children: infoList.map((e) => BaseInfoItemWidget(
                  title: e.title,
                  color: e.color,
                  value:e.value,
                ),
                ).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
