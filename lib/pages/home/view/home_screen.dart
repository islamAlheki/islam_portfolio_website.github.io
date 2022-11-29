import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/home/model/base_info_item_model.dart';
import 'package:islam_portfolio/pages/home/model/contacts_model.dart';
import 'package:islam_portfolio/pages/home/view/widget/section_intro_card_widget.dart';
import 'package:islam_portfolio/pages/home/view/widget/section_today_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// welcome card
        SectionIntroCardWidget(
          title: 'Hi!',
          subTitle: 'I’m Islam',
          bioText: 'We are Connecting You The\nDigital Life ..',
          buttonName: 'Download CV',
          buttonEnable: true,
          contactList: [
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
          ],
          downloadCvOnPress: (){},
        ),

        /// today and basic data card
        SectionTodayCardWidget(
          viewsCount:200 ,
          totalAppsCount: 22,
          partnerCount:1500 ,
          iosAppsCount: 8,
          androidAppsCount: 14,
          infoList: [
            BaseInfoItem(title:'ADDRESS',value: 'Cairo, Egypt',color: ColorConfig().cardBlueColor(1),),
            BaseInfoItem(title:'Language',value: 'Arabic, English',color: ColorConfig().cardBlueColor(1),),
            BaseInfoItem(title:'Age',value: '26 Years',color: ColorConfig().cardBlueColor(1),),
            BaseInfoItem(title:'Relationship',value: 'Married',color: ColorConfig().cardBlueColor(1),),
            BaseInfoItem(title:'Phone',value: '+201155687867',color: ColorConfig().cardBlueColor(1),),
            BaseInfoItem(title:'EMAIL',value: 'islam.alheky@gmail.com',color: ColorConfig().cardBlueColor(1),),
          ],
        ),
      ],
    );
  }
}
