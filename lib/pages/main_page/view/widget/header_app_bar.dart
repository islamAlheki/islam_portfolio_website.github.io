
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:provider/provider.dart';

class HeaderAppBarWidget extends StatelessWidget {
  const HeaderAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.centerLeft,
      height: SizeConfig.height*0.06,
      padding: EdgeInsets.only(right:SizeConfig.height * 0.05,left: SizeConfig.height * 0.04),
      duration: const Duration(milliseconds: 200),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// side menu button
          SizedBox(
            width: SizeConfig.height*0.03,
            height: SizeConfig.height*0.03,
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/icons/icon-menu.svg',
                color: ColorConfig().iconGrey2Color(1),
              ),
              onTap: (){
               context.read<SideMenuHelper>().scaffoldKey.currentState!.openDrawer();
              },
            ),
          ),
          // SizedBox(
          //   width: SizeConfig.height*0.02,
          // ),
          // Text(
          //   'Menu',
          //   //'Developed by \u00a9 Islam Nasser',
          //   textAlign: TextAlign.left,
          //   style: Theme.of(context).textTheme.subtitle1!.copyWith(
          //     fontWeight: FontWeight.w600,
          //     color: ColorConfig().iconGrey2Color(1),
          //   ),
          // ),
        ],
      ),
    );
  }
}
