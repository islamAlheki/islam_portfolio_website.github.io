import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';


class BackButtonWidget extends StatelessWidget {

  final Color buttonColor;
  final Color onPrimaryColor;
  final Color elevationColor;
  final Widget iconWidget;
  final void Function() onPress;
  const BackButtonWidget({Key? key,required this.onPress,required this.buttonColor,required this.onPrimaryColor,required this.iconWidget,required this.elevationColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.height*0.045,
        height: SizeConfig.height*0.045,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child:  ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0),
            elevation: 2,
            shadowColor: elevationColor ,
            primary: buttonColor,
            onPrimary: onPrimaryColor,
            // side: BorderSide(
            //     color: buttonWhiteColor,
            //     width: 1
            // ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fixedSize:Size.fromHeight(SizeConfig.height*0.045),
            minimumSize: Size.fromHeight(SizeConfig.height*0.045),
          ),
          child:iconWidget ,
        )
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color borderColor;
  final Widget iconWidget;
  final Color shadowColor;
  final void Function() onPress;
  final Color onPressColor;
  final bool showLoading;
  final bool iconIsLeft;
  final Color loadingColor;
  final TextStyle style;
  final double borderWidth;
  final double radius;

  const CustomButtonWithIcon({
    Key? key,
    required this.buttonText,
    required this.iconIsLeft,
    required this.onPressColor,
    required this.loadingColor,
    required this.iconWidget,
    required this.backgroundColor,
    required this.onPress,
    required this.shadowColor,
    required this.showLoading,
    required this.borderColor,
    required this.style,
    required this.borderWidth,
    required this.radius,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:iconIsLeft? TextDirection.rtl:TextDirection.ltr,
      child: ElevatedButton.icon(
        onPressed: onPress,
        icon: iconWidget,
        label: Text(
          buttonText.toString(),
          textAlign: TextAlign.center,
          maxLines: 1,
          style: style,
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: 1,
          shadowColor: shadowColor,
          primary: backgroundColor,
          onPrimary: onPressColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
        ),

      ),
    );

  }
}

class CustomButtonWithoutIcon extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color borderColor;
  final Color shadowColor;
  final void Function() onPress;
  final Color onPressColor;
  final bool showLoading;
  final Color loadingColor;
  final TextStyle style;
  final double borderWidth;
  final double elevation;

  const CustomButtonWithoutIcon(
      {Key? key,
        required this.buttonText,
        required this.onPressColor,
        required this.loadingColor,
        required this.backgroundColor,
        required this.borderColor,
        required this.onPress,
        required this.shadowColor,
        required this.showLoading,
        required this.style,
        required this.borderWidth,
        required this.elevation,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: !showLoading ? onPress : () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: elevation,
          shadowColor: shadowColor,
          primary: backgroundColor,
          onPrimary: onPressColor,
          onSurface: Colors.black,
          enableFeedback: true,


          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: style,
              ),
            ),
          ],
        ));
  }
}

class ContactCircleButton extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final Color backgroundColor;
  final void Function() onPress;

  const ContactCircleButton(
      {Key? key,
        required this.icon,
        required this.iconColor,
        required this.backgroundColor,
        required this.onPress,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.4, 0.85,],
          colors: [
            backgroundColor.withOpacity(0.7),
            backgroundColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: backgroundColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, 1), // changes position of shadow
          ),
        ],
      ),
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0),
            elevation: 5,
            shadowColor: backgroundColor.withOpacity(0.5),
            primary: Colors.transparent,
            onPrimary: ColorConfig().buttonWhiteColor(1),
            onSurface: Colors.black,
            enableFeedback: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: BorderSide(
                width: 0,
                color: backgroundColor,
              ),
            ),
          ),
          child: SizedBox(
            height: SizeConfig.height*0.02,
            width: SizeConfig.height*0.02,
            child: SvgPicture.network(
              icon,
              semanticsLabel: '!',
              placeholderBuilder: (BuildContext context) => Container(
                padding: EdgeInsets.all(SizeConfig.height*0.005),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: ColorConfig().loadingWhiteColor(1),
                ),
              ),
              color: iconColor,
              height: SizeConfig.height*0.02,
              width: SizeConfig.height*0.02,
              fit: BoxFit.contain,
            ),
          ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final double size;
  final String icon;
  final void Function() onTap;
  const CustomIconButton({Key? key,required this.size,required this.icon,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        'assets/icons/$icon.svg',
        height: size,
        width: size,

      ),
    );
  }
}

buildButtonIcon(BuildContext context, String icon){
  return Container(
    decoration: BoxDecoration(
      color: ColorConfig().mainOrangeColor(1).withOpacity(0.2),
      shape:BoxShape.circle,
    ),
    child: Container(
      margin: EdgeInsets.all(SizeConfig.height * 0.00925),
      child: SvgPicture.asset(
        "assets/icons/$icon.svg",
        width: SizeConfig.height*0.02543,
        height: SizeConfig.height*0.02543,
      ),
    ),
  );
}

class CustomUpFloatingActionButton extends StatelessWidget {
  final String tooltip;
  final Color backgroundColor;
  final Widget iconWidget;
  final void Function() onPress;
  final double radius;
  final bool showButton;

  const CustomUpFloatingActionButton({
    Key? key,
    required this.tooltip,
    required this.iconWidget,
    required this.backgroundColor,
    required this.onPress,
    required this.radius,
    required this.showButton,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity:showButton?1:0,
      duration: const Duration(seconds:1),
      child: Visibility(
        visible:showButton,
        child: SizedBox(
          width: SizeConfig.height*0.05,
          height:SizeConfig.height*0.05,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
            onPressed: onPress,
            tooltip: tooltip,
            backgroundColor: backgroundColor,
            child: iconWidget,
          ),
        ),
      ),
    );

  }
}



Widget dots({required int current, index, required Color activeColor, required void Function() dotOnTap,}) {
  if (current != index) {
    return GestureDetector(
      onTap:dotOnTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50),),
          color: dotColor(current,index,activeColor),
        ),
      ),
    );
  } else {
    return GestureDetector(
      onTap: dotOnTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50),),
          color: dotColor(current,index,activeColor),
        ),
      ),
    );
  }
}

Color dotColor(int current,int index,Color activeColor) {
  return current == index ? activeColor : ColorConfig().iconWhiteColor(1);
}