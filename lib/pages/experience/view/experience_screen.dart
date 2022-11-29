import 'package:flutter/material.dart';
import 'package:islam_portfolio/pages/experience/view/widget/section_experience_card_widget.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        /// EDUCATION
        SectionExperienceCardWidget(
          title: 'Experience',
          experienceList: [

            ExperienceItemModel(
              startYear: 'JULy 2018',
              endYear:'OCTOBER 2020' ,
              companyName: 'AI TECHNOLOGY',
              companyLogoUrl: 'https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/83630650_105512387675806_5471410803183714304_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=xSnzmW2K2rMAX8b3iIW&_nc_ht=scontent.fcai20-1.fna&oh=00_AT82Aj3P_JrQubbkdSFsmgbm6K5_ZRQn9XqzQ3xWYbEbvw&oe=628B4825',
              position:'I\'ve been working collaboratively with a good team of developers,\nand I\'ve developed these apps that are above.' ,
              freelance: false,
              freelanceDate: '3 MONTH',
            ),
            ExperienceItemModel(
              startYear: 'DECEMBER 2020',
              endYear:'JULy 2021' ,
              companyName: 'Be Number one',
              companyLogoUrl: '',
              position:'work collaboratively with a good team of developers,\nand I\'m the team leader there.' ,
              freelance: true,
              freelanceDate: '3 MONTH',

            ),
            ExperienceItemModel(
              startYear: 'JULy 2021 ',
              endYear:'SEPTEMBER 2021' ,
              companyName: 'LAYOUTI',
              companyLogoUrl: '',
              position:'A wonderful experience working on the development of the \nEtoy application to sell and exchange toys.' ,
              freelance: false,
              freelanceDate: '3 MONTH',
            ),
            ExperienceItemModel(
              startYear: 'SEPTEMBER 2021',
              endYear:'OCTOBER 2021' ,
              companyName: 'Shatara',
              companyLogoUrl: '',
              position:'I have modified several previously developed projects in collaboration with a problem-solving team.' ,
              freelance: false,
              freelanceDate: '3 MONTH',
            ),

            ExperienceItemModel(
              startYear: 'January 2022',
              endYear:'Now' ,
              companyName: 'Watan First Digital Egypt',
              companyLogoUrl: '',
              position:'mobile application developer' ,
              freelance: true,
              freelanceDate: 'January 2022 - Now',
            ),
          ],
        ),

      ],
    );
  }
}
