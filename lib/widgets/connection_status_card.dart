import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';

class ConnectionStatusCardWidget extends StatelessWidget {
  final bool showCard;
  final String text;

  const ConnectionStatusCardWidget({Key? key,required this.showCard,required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimatedOpacity(
      opacity:showCard? 1.0 : 0.0,
      duration: const Duration(milliseconds: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorConfig().buttonGrey2Color(0.7),
              borderRadius: BorderRadius.circular(100),
            ),

            padding: EdgeInsets.all(SizeConfig.height*0.006),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: SizeConfig.height*0.015,
                  ),
                  Icon(
                    Icons.wifi_off_sharp,
                    color:ColorConfig().iconWhiteColor(1),
                  ),
                  SizedBox(
                    width: SizeConfig.height*0.015,
                  ),

                  Text(
                    'text',
                    textAlign:TextAlign.center,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: ColorConfig().fontWhiteColor(1),
                      fontWeight: FontWeight.w500,
                      height: SizeConfig.height*0.0015,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.height*0.015,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
