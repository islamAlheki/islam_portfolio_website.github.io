import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/services/view/widget/section_what_i_do_card_widget.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Section What I Do
        SectionWhatIDoCardWidget(
          title: 'WHAT I DO?',
          subTitle: 'HERE ARE SOME OF MY EXPERTISE',
          aboutVectorImg: 'about_us_vector',
          servicesList: [

            ServicesItemModel(
              color: ColorConfig().iconRedColor(1),
              icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
              title:'Cross-platform' ,
              description: 'Get top-notch mobile applications that run on multiple platforms Android & iOS',
            ),

            ServicesItemModel(
              color: ColorConfig().cardBlueColor( 1),
              icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
              title:'Quality' ,
              description: 'performance, UX, and accessibility testing',
            ),

            ServicesItemModel(
              color: ColorConfig().cardGreenColor(1),
              icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
              title:'Cross-platform' ,
              description: 'Get top-notch mobile applications that run on multiple platforms Android & iOS',
            ),

            ServicesItemModel(
              color: ColorConfig().iconYellowColor(1),
              icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
              title:'Cross-platform' ,
              description: 'Get top-notch mobile applications that run on multiple platforms Android & iOS',
            ),

            ServicesItemModel(
              color: ColorConfig().iconRedColor(1),
              icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
              title:'Cross-platform' ,
              description: 'Get top-notch mobile applications that run on multiple platforms Android & iOS',
            ),

            ServicesItemModel(
              color: ColorConfig().iconRedColor(1),
              icon:'https://raw.githubusercontent.com/islamAlheki2019/heke_support/a6845ec6e8b9d3954e1fd6405ac657f4877a6244/assets/icons/google_drive.svg' ,
              title:'Cross-platform' ,
              description: 'Get top-notch mobile applications that run on multiple platforms Android & iOS',
            ),
          ],
        ),

      ],
    );
  }
}
