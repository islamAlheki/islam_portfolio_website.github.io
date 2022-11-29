import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class DrawerLargeItemWidget extends StatelessWidget {

  final String title;
  final String icon;
  final int selectedId;
  final int currentId;
  final VoidCallback onTap;

  const DrawerLargeItemWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.selectedId,
    required this.currentId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Padding(
        padding: EdgeInsets.only(bottom: SizeConfig.height*0.0),
        child: ElevatedButton(
          onPressed: onTap,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          autofocus: false,
          onFocusChange: (v){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(
              bottom:!SizeConfig.isDesktop(context)?SizeConfig.height*0.015:SizeConfig.height*0.02,
              top: !SizeConfig.isDesktop(context)?SizeConfig.height*0.02:SizeConfig.height*0.02,
            ),
            elevation: 0,
            shadowColor: ColorConfig().buttonOrangeColor(0.0),
            primary: ColorConfig().buttonOrangeColor(0),
            onPrimary: ColorConfig().buttonGrey2Color(0.0001).withOpacity(0.1),
            onSurface: ColorConfig().buttonGrey2Color(0.0001).withOpacity(0.1),
            enableFeedback: false,
            splashFactory: NoSplash.splashFactory,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                width: 0,
                color: ColorConfig().cardGrey1Color(1),
              ),
            ),

          ),
          child: Row(
           children: [
             // div
             Container(
               height: SizeConfig.height*0.03,
               width: SizeConfig.height*0.006,
               margin: EdgeInsets.only(top: SizeConfig.height*0.0),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: currentId==selectedId?ColorConfig().iconOrangeColor(1):Colors.transparent,
               ),
             ),

             SizedBox(
               width: SizeConfig.height*0.03,
             ),

             // icon
             SizedBox(
               height: SizeConfig.height*0.02,
               width: SizeConfig.height*0.02,
               child: SvgPicture.asset(
                 'assets/icons/$icon.svg',
                 color: currentId==selectedId?ColorConfig().iconOrangeColor(1):ColorConfig().iconGrey3Color(1),
                 height: SizeConfig.height*0.02,
                 width: SizeConfig.height*0.02,
                 fit: BoxFit.contain,
               ),
             ),
             SizedBox(
               width: SizeConfig.height*0.02,
             ),
             // title
             Expanded(
               child: Text(
                 title,
                 maxLines: 1,
                 textAlign: TextAlign.left,
                 style: Theme.of(context).textTheme.headline5!.copyWith(
                   fontWeight: currentId==selectedId?FontWeight.w600:FontWeight.w500,
                   color: currentId==selectedId?ColorConfig().fontOrangeColor(1):ColorConfig().fontGrey2Color(1),
                 ),
               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}
