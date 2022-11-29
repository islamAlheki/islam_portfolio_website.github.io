import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/about/provider/api/api_about_provider.dart';
import 'package:islam_portfolio/pages/about/view/about_us_screen.dart';
import 'package:islam_portfolio/pages/education/view/education_screen.dart';
import 'package:islam_portfolio/pages/experience/view/experience_screen.dart';
import 'package:islam_portfolio/pages/home/view/home_screen.dart';
import 'package:islam_portfolio/pages/main_page/provider/helper/main_scroll_helper.dart';
import 'package:islam_portfolio/pages/main_page/view/widget/header_app_bar.dart';
import 'package:islam_portfolio/pages/portfolio/view/portfolio_screen.dart';
import 'package:islam_portfolio/pages/services/view/services_screen.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/pages/side_menu/view/desktop_large_side_menu.dart';
import 'package:islam_portfolio/pages/side_menu/view/desktop_small_side_menu.dart';
import 'package:islam_portfolio/pages/side_menu/view/mobile_side_menu.dart';
import 'package:islam_portfolio/pages/skills/view/skills_screen.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController mainController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_)async{
      if(mounted){
        context.read<ApiAboutProvider>().getAboutResponse(limit: 1000);
      }
    });
    mainController.addListener(() {
      context.read<MainScrollHelper>().onScroll(controller: mainController );
    });
  }

  @override
  Widget build(BuildContext context) {
    SideMenuHelper sideMenuHelper=Provider.of<SideMenuHelper>(context);
    MainScrollHelper mainScrollHelper=Provider.of<MainScrollHelper>(context);

    // if(SizeConfig.isDesktop(context)){
    //   print("isDesktop");
    // }
    // if(SizeConfig.isTablet(context)){
    //   print("isTablet");
    // }
    // if(SizeConfig.isMobile(context)){
    //   print("isMobile");
    // }



    return Scaffold(
      key: sideMenuHelper.scaffoldKey,
      drawer: MobileSidMenu(mainController: mainController),
      floatingActionButton:CustomUpFloatingActionButton(
        showButton: sideMenuHelper.selectedTapIndex!=1,
        backgroundColor: ColorConfig().buttonOrangeColor(1),
        radius:15,
        tooltip:'Up' ,
        iconWidget:Icon(
          Icons.keyboard_arrow_up,
          color: ColorConfig().buttonWhiteColor(1),
        ),
        onPress:(){
          mainScrollHelper.scrollTop(controller: mainController);
        },
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [

            /// mobile header
            Visibility(
              visible:!SizeConfig.isDesktop(context),
              child: const HeaderAppBarWidget(),
            ),


            /// body
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // We want this side menu only for large screen
                  if(SizeConfig.isDesktop(context))
                  Visibility(
                    visible:MediaQuery.of(context).size.width<=1343,
                    child:DesktopSmallSidMenu(mainController: mainController),
                    replacement:Expanded(
                      child: DesktopLargeSidMenu(mainController: mainController),
                    ),
                  ),

                  Expanded(
                    // It takes 5/6 part of the screen
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                          child:ListView(
                            controller: mainController,
                            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                            primary: false,
                            shrinkWrap: true,
                            padding: EdgeInsets.only(
                              top: SizeConfig.isDesktop(context)?SizeConfig.height*0.04:5,
                              bottom:SizeConfig.isDesktop(context)?SizeConfig.height*0.04:SizeConfig.height*0.02,
                            ),
                            children:const [
                              HomeScreen(),

                              AboutUsScreen(),

                              ServicesScreen(),

                              SkillsScreen(),

                              EducationScreen(),

                              ExperienceScreen(),

                              PortfolioScreen(),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }


}
