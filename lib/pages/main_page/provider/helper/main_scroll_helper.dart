import 'package:flutter/material.dart';
import 'package:islam_portfolio/main.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:provider/provider.dart';

class MainScrollHelper extends ChangeNotifier {
  bool canScrolling = true;


  scrollTop({required ScrollController controller})async{
    await controller.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInQuart);
  }

  onScroll({required ScrollController controller})async {
    SideMenuHelper sideMenuProvider = Provider.of<SideMenuHelper>(IslamPortfolio.navigatorKey.currentState!.overlay!.context,listen: false);

    final double current=controller.position.pixels;
    final double aboutPosition=SizeConfig.height*0.4;
    final double servicesPosition=SizeConfig.height*1.12;
    final double skillsPosition=SizeConfig.height*1.648;
    final double educationPosition=SizeConfig.height*2.55;
    final double experiencePosition=SizeConfig.height*3.46;
    final double portfolioPosition=SizeConfig.height*4.30;


    if(canScrolling){
      //
      // print("current pixels= ${controller.position.pixels}");
      // print("max pixels= ${controller.position.maxScrollExtent}");
      // print("height= ${SizeConfig.height}");
      // print("width= ${SizeConfig.width}");
      //

      /// intro
      if(current<aboutPosition){
        sideMenuProvider.setTabIndex(index: 1);
      }

      /// about
      else if(current<servicesPosition){
        sideMenuProvider.setTabIndex(index: 2);
      }

      /// services
      else if(current<skillsPosition){
        sideMenuProvider.setTabIndex(index: 3);
      }

      /// skills
      else if(current<educationPosition){
        sideMenuProvider.setTabIndex(index: 4);
      }

      /// education
      else if(current<experiencePosition){
        sideMenuProvider.setTabIndex(index: 5);
      }

      /// experience
      else if(current<portfolioPosition){
        sideMenuProvider.setTabIndex(index: 6);
      }

      /// last portfolio
      else{
        sideMenuProvider.setTabIndex(index: 7);
      }
    }

  }

  double getDesktopOffsetToMoving(int tabIndex){
    final double aboutOffset=SizeConfig.height*0.579682163257695;
    final double servicesOffset=SizeConfig.height*1.377256767234611;
    final double skillsOffset=SizeConfig.height*1.925334834573256;
    final double educationOffset=SizeConfig.height*2.758805931513034;
    final double experienceOffset=SizeConfig.height*3.732416354232098;
    final double portfolioOffset=SizeConfig.height*4.681565941278658;

    switch (tabIndex){
      case 1: // intro
        return 0;
      case 2: // about
        return aboutOffset;
      case 3: // services
        return servicesOffset;
      case 4: // skills
        return skillsOffset;
      case 5: // education
        return educationOffset;
      case 6: // experience
        return experienceOffset;
      case 7: // portfolio
        return portfolioOffset;
    }
    return 0;
  }

  moveToDesktopTap({required ScrollController controller,required int tabIndex})async{
    canScrolling=false;
    notifyListeners();
    await controller.animateTo(getDesktopOffsetToMoving(tabIndex), duration: const Duration(milliseconds: 500), curve: Curves.easeInQuart);
    canScrolling=true;
    notifyListeners();

  }




  double getMobileOffsetToMoving(int tabIndex){
    final double aboutOffset=SizeConfig.height*0.579682163257695;
    final double servicesOffset=SizeConfig.height*1.377256767234611;
    final double skillsOffset=SizeConfig.height*1.925334834573256;
    final double educationOffset=SizeConfig.height*2.758805931513034;
    final double experienceOffset=SizeConfig.height*3.732416354232098;
    final double portfolioOffset=SizeConfig.height*4.681565941278658;

    switch (tabIndex){
      case 1: // intro
        return 0;
      case 2: // about
        return aboutOffset;
      case 3: // services
        return servicesOffset;
      case 4: // skills
        return skillsOffset;
      case 5: // education
        return educationOffset;
      case 6: // experience
        return experienceOffset;
      case 7: // portfolio
        return portfolioOffset;
    }
    return 0;
  }

  moveToMobileTap({required ScrollController controller,required int tabIndex})async{
    canScrolling=false;
    notifyListeners();
    await controller.animateTo(getMobileOffsetToMoving(tabIndex), duration: const Duration(milliseconds: 200), curve: Curves.easeInOutCirc);
    canScrolling=true;
    notifyListeners();

  }

}
