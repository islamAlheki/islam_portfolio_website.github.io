import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/buttons.dart';

class ConnectionErrorWidget extends StatelessWidget {
  final VoidCallback tryAgainOnTap;
  final double? marginTop;
  final bool? fontWhiteColor;
  final bool? withTryAgainButton;

  const ConnectionErrorWidget({Key? key,required this.tryAgainOnTap,this.marginTop=0,this.fontWhiteColor=false,this.withTryAgainButton=true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:marginTop!),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // gif
          SizedBox(
            width: SizeConfig.height*0.25,
            height: SizeConfig.height*0.25,
            child:Lottie.asset(
              "assets/gif/no_internet2.json",
              fit: BoxFit.contain,
            ),
          ),
          //title
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.height*0.02,left: SizeConfig.height * 0.004635,right: SizeConfig.height * 0.004635),
            child: Text(
              'lostConnectionTitle',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.bold,
                color: fontWhiteColor!?ColorConfig().fontWhiteColor(1):ColorConfig().fontBlackColor(1),
              ),
            ),
          ),
          SizedBox(
            height:SizeConfig.height * 0.01 ,
          ),
          //Description
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.height*0.0,left: SizeConfig.height * 0.06,right: SizeConfig.height * 0.06),
            child: Text(
              'lostConnectionDescription',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.normal,
                color: fontWhiteColor!?ColorConfig().fontWhiteColor(1):ColorConfig().fontBlackColor(1),
              ),
            ),
          ),
          //try again
          Visibility(
            visible: withTryAgainButton!,
            child: Container(
              width: SizeConfig.height * 0.2,
              height: SizeConfig.height*0.045,
              margin: EdgeInsets.only(top:SizeConfig.height*0.02 ),
              child: CustomButtonWithoutIcon(
                onPress: tryAgainOnTap,
                style: Theme.of(context).textTheme.headline5!.copyWith(color: ColorConfig().buttonWhiteColor(1)),
                borderColor: ColorConfig().appMainGreen1Color(1),
                backgroundColor:ColorConfig().appMainGreen1Color(1) ,
                shadowColor:ColorConfig().buttonGrey2Color(1) ,
                onPressColor: ColorConfig().mainOrangeColor(1),
                buttonText: "tryAgainButton",
                showLoading:false ,
                loadingColor: ColorConfig().loadingWhiteColor(1),
                borderWidth: 1,
                elevation: 3,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
