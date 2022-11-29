import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_decorations_config.dart';
import 'package:islam_portfolio/pages/services/view/widget/services_item_card_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class SectionWhatIDoCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String aboutVectorImg;
  final List<ServicesItemModel>servicesList;

  const SectionWhatIDoCardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.aboutVectorImg,
    required this.servicesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.all(SizeConfig.isMobile(context)?SizeConfig.height*0.04:SizeConfig.height*0.05),
      margin: EdgeInsets.only(
        top: SizeConfig.isMobile(context)?SizeConfig.height*0.02:SizeConfig.height*0.04,
        right:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
        left:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
      ),
      decoration: mainCardDecoration.copyWith(
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/background_circle.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // title
          Text(
            title,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline2!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.01,
          ),
          // sub title
          Text(
            subTitle,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorConfig().fontBlackColor(1),
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.02,
          ),

          // services items
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: servicesList.length,
            padding: EdgeInsets.only(top: SizeConfig.height*0.02,),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: SizeConfig.height*006 /SizeConfig.height*0.2,
              crossAxisSpacing: SizeConfig.height * 0.04,
              mainAxisSpacing: SizeConfig.height * 0.04,
              mainAxisExtent: SizeConfig.height * 0.14,
              crossAxisCount:SizeConfig.isDesktop(context)?3:SizeConfig.isTablet(context)?2:SizeConfig.isMobile(context)?1:4,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ServicesItemCardWidget(
                color:servicesList[index].color ,
                icon: servicesList[index].icon,
                title: servicesList[index].title,
                description: servicesList[index].description,
              );
            },
          ),

        ],
      ),
    );
  }
}

class ServicesItemModel {
  final Color color;
  final String icon;
  final String title;
  final String description;


  const ServicesItemModel({
    required this.color,
    required this.icon,
    required this.title,
    required this.description,
  });
}

