import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class DrawerSmallItemWidget extends StatelessWidget {

  final String title;
  final String icon;
  final int selectedId;
  final int currentId;
  final VoidCallback onTap;

  const DrawerSmallItemWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.selectedId,
    required this.currentId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      color:ColorConfig().iconOrangeColor(1),
      hoverColor:ColorConfig().buttonGrey2Color(0.2).withOpacity(0.1) ,
      disabledColor:ColorConfig().iconOrangeColor(1) ,
      splashColor: ColorConfig().iconOrangeColor(1),
      focusColor: ColorConfig().iconOrangeColor(1),
      highlightColor: ColorConfig().iconOrangeColor(1),
      icon: Center(
        child: SvgPicture.asset(
          'assets/icons/$icon.svg',
          color: currentId==selectedId?ColorConfig().iconOrangeColor(1):ColorConfig().iconGrey3Color(1),
          height: SizeConfig.height*0.06,
          width: SizeConfig.height*0.06,
          fit: BoxFit.contain,
        ),
      ),
      padding: EdgeInsets.all(SizeConfig.height*0.022),

    );
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.height*0.0),
            child: ElevatedButton.icon(
              onPressed: onTap,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              autofocus: false,
              icon:Center(
                child: SvgPicture.asset(
                  'assets/icons/$icon.svg',
                  color: currentId==selectedId?ColorConfig().iconWhiteColor(1):ColorConfig().iconWhiteColor(1),
                  height: SizeConfig.height*0.02,
                  width: SizeConfig.height*0.02,
                  fit: BoxFit.contain,
                ),
              ) ,
              onFocusChange: (v){},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(bottom: SizeConfig.height*0.0,top: SizeConfig.height*0.0),
                elevation: 0,
                shadowColor: ColorConfig().buttonOrangeColor(0.0),
                primary: currentId==selectedId?ColorConfig().iconOrangeColor(1):ColorConfig().iconGrey3Color(1),
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
              label: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
