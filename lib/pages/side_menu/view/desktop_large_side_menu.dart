import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/home/model/contacts_model.dart';
import 'package:islam_portfolio/pages/home/provider/helper/intro_card_helper.dart';
import 'package:islam_portfolio/pages/main_page/provider/helper/main_scroll_helper.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/pages/side_menu/view/widget/drawer_header_widget.dart';
import 'package:islam_portfolio/pages/side_menu/view/widget/drawer_large_item_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';
import 'package:provider/provider.dart';

class DesktopLargeSidMenu extends StatelessWidget {
  final ScrollController mainController ;

  const DesktopLargeSidMenu({
    Key? key,
    required this.mainController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SideMenuHelper sideMenuProvider = Provider.of<SideMenuHelper>(context);
    MainScrollHelper mainScrollHelper = Provider.of<MainScrollHelper>(context);
    IntroCardHelper introCardHelper=Provider.of<IntroCardHelper>(context);

    final List<ContactItemItem> contactList=[
      ContactItemItem(
        type: 'email',
        url:'islam.alheke@gmail.com' ,
        icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
        backgroundColor:ColorConfig().socialEmailColor(1) ,
        iconColor: ColorConfig().iconWhiteColor(1),
      ),
      ContactItemItem(
        type: 'whatsapp',
        url:'+201552686878' ,
        icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
        backgroundColor:ColorConfig().socialWhatsappColor(1) ,
        iconColor: ColorConfig().iconWhiteColor(1),
      ),
      ContactItemItem(
        type: 'linkedIn',
        url:'islam-nasser-75174a1a4' ,
        icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
        backgroundColor:ColorConfig().socialLinkedInColor(1) ,
        iconColor: ColorConfig().iconWhiteColor(1),
      ),
      ContactItemItem(
        type: 'twitter',
        url:'islam_alheki/' ,
        icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
        backgroundColor:ColorConfig().socialTwitterColor(1) ,
        iconColor: ColorConfig().iconWhiteColor(1),
      ),
      ContactItemItem(
        type: 'instagram',
        url:'islam_alheki/' ,
        icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
        backgroundColor:ColorConfig().socialInstagramColor(1) ,
        iconColor: ColorConfig().iconWhiteColor(1),
      ),
    ];


    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Drawer(
        elevation: 10,
        child: Column(
          children: [

            // header
            const DrawerHeaderWidget(
              largeHeader: true,
              logo: 'https://islamalheki2019.github.io/http-islamcv.github.io-/images/yafndemClientIos.png',
              userName: 'Islam Nasser',
              titleJob:'Mobile Application Developer' ,
              framework: 'Flutter',
            ),

            // items list
            Expanded(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  // background color
                  Container(
                    margin: EdgeInsets.only(
                      left: SizeConfig.height*0.034,
                      right: SizeConfig.height*0.03,
                      top: SizeConfig.height*0.03,
                      bottom: SizeConfig.height*0.03,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: ColorConfig().cardGrey1Color(1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: SizeConfig.height*0.012,
                      right: SizeConfig.height*0.03,
                      top: SizeConfig.height*0.03,
                      bottom: SizeConfig.height*0.03,
                    ),
                    padding: EdgeInsets.only(
                      left: SizeConfig.height*0.02,
                      right: SizeConfig.height*0.02,
                      top: SizeConfig.height*0.04,
                      bottom: SizeConfig.height*0.04,
                    ),
                    child: ListView(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      children: [
                        DrawerLargeItemWidget(
                          title: "Home",
                          icon: "android_normal",
                          currentId: 1,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 1);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                        DrawerLargeItemWidget(
                          title: "About",
                          icon: "android_normal",
                          currentId: 2,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: (){
                            sideMenuProvider.setTabIndex(index: 2);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },

                        ),
                        DrawerLargeItemWidget(
                          title: "Services",
                          icon: "android_normal",
                          currentId: 3,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 3);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                        DrawerLargeItemWidget(
                          title: "Skills",
                          icon: "android_normal",
                          currentId: 4,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 4);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                        DrawerLargeItemWidget(
                          title: "Education",
                          icon: "android_normal",
                          currentId: 5,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 5);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                        DrawerLargeItemWidget(
                          title: "Experience",
                          icon: "android_normal",
                          currentId: 6,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 6);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                        DrawerLargeItemWidget(
                          title: "Portfolio",
                          icon: "android_normal",
                          currentId: 7,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 7);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                        DrawerLargeItemWidget(
                          title: "Blog",
                          icon: "android_normal",
                          currentId: 8,
                          selectedId: sideMenuProvider.selectedTapIndex,
                          onTap: () {
                            sideMenuProvider.setTabIndex(index: 8);
                            mainScrollHelper.moveToDesktopTap(controller: mainController, tabIndex: sideMenuProvider.selectedTapIndex);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// lets talk buttons list
            Visibility(
              visible: sideMenuProvider.selectedTapIndex!=1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(contactList.length, (index) {
                    return  Padding(
                      padding: EdgeInsets.only(right:SizeConfig.height * 0.012,),
                      child: SizedBox(
                        width:SizeConfig.height*0.03,
                        height: SizeConfig.height*0.03,
                        child: ContactCircleButton(
                          onPress: (){
                            introCardHelper.socialOnTap(
                              context: context,
                              buttonType: contactList[index].type,
                              url: contactList[index].url,
                            );

                          },
                          icon: contactList[index].icon,
                          backgroundColor: contactList[index].backgroundColor,
                          iconColor: contactList[index].iconColor,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              replacement: SizedBox(
                height:SizeConfig.height*0.03,
              ),
            ),


            SizedBox(
              height: SizeConfig.height*0.02,
            ),
          ],
        ),
      ),
    );
  }
}

