import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';
import 'package:show_up_animation/show_up_animation.dart';





class AppBarBackAndSearchAndFilter extends StatelessWidget {
  final bool? showSearchIcon;
  final bool titleFromApi;
  final String pageTitle;
  final void Function() searchOnTap;
  final void Function() filterOnTap;
  final bool? showFilterIcon;

  const AppBarBackAndSearchAndFilter({Key? key,
   this.showSearchIcon=true,
   this.showFilterIcon=false,
  required this.pageTitle,
  required this.titleFromApi,
  required this.searchOnTap,
  required this.filterOnTap,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConfig().appScaffoldBackgroundColor(1),
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.height * 0.02311,),
      padding: EdgeInsets.only(bottom: SizeConfig.height*0.02,top:SizeConfig.height*0.01 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // user avatar and page title
          Expanded(
            child: Row(
              children: [
                // back
                InkWell(
                  focusColor: ColorConfig().appScaffoldBackgroundColor(1),
                  highlightColor: ColorConfig().appScaffoldBackgroundColor(1),
                  hoverColor: ColorConfig().appScaffoldBackgroundColor(1),
                  splashColor: ColorConfig().appScaffoldBackgroundColor(1),
                  onTap:(){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:SizeConfig.height * 0.001 ),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: ColorConfig().iconBlackColor(1),
                      size: SizeConfig.height * 0.03,
                    ),
                  ),

                ),
                // page title
                Container(
                  width: SizeConfig.width*0.55,
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.height * 0.015),
                  child: Text(
                    pageTitle,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline2!.copyWith(color: ColorConfig().fontBlackColor(1),fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // search icon and filter
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // search
              Visibility(
                visible: showSearchIcon!,
                child: CustomIconButton(
                  icon: 'search',
                  size: SizeConfig.height*0.034,
                  onTap: searchOnTap,
                ),
              ),
              Visibility(
                visible: showFilterIcon!,

                child: SizedBox(
                  width: SizeConfig.height * 0.00925,
                ),
              ),
              /// filter
              ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 200),
                curve: Curves.easeInSine,
                offset: -0.1,
                direction: Direction.horizontal,
                child:Visibility(
                  visible: showFilterIcon!,
                  child: CustomIconButton(
                    icon: 'filter',
                    size: SizeConfig.height*0.034,
                    onTap: filterOnTap,
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

