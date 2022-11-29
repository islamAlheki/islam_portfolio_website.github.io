import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/education/view/widget/section_education_card_widget.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// EDUCATION
        SectionEducationCardWidget(
          title: 'EDUCATION',
          subTitle: 'ACADEMIC CAREER',
          educationList: [

            EducationItemModel(
              color: ColorConfig().fontOrangeColor(1),
              educationName:'Bachelor of Computer and Management Technology Science' ,
              educationAddress:'Cross-platform',
              graduatedIn: 'Graduated in may 2009 (years)',
              description: 'HIGHER INSTITUTE OF COMPUTER SCIENCE & MANAGEMENT TECHNOLOGY SCIENCE AND MANAGEMENT TECHNOLOGY',
            ),
            EducationItemModel(
              color: ColorConfig().fontOrangeColor(1),
              educationName:'Dart programming language course' ,
              educationAddress:'Cross-Flutter (Dr.Angela)',
              graduatedIn: 'Graduated in may 2009 (years)',
              description: 'THE COMPLETE 2020 FLUTTER DEVELOPMENT BOOTCAMP WITH DART LANGUAGE LEARN FROM GOOGLE FLUTTER TEAM.',
            ),
            EducationItemModel(
              color: ColorConfig().fontOrangeColor(1),
              educationName:'Cross-Flutter (Paulo)',
              educationAddress:'Cross-Flutter (Dr.Angela)',
              graduatedIn: 'Graduated in may 2009 (years)',
              description: 'THE COMPLETE 2020 FLUTTER DEVELOPMENT BOOTCAMP LEARN FROM GOOGLE FLUTTER TEAM.',
            ),
            EducationItemModel(
              color: ColorConfig().fontOrangeColor(1),
              educationName:'Cross-Flutter (Maximilian)',
              educationAddress:'Cross-Flutter (Paulo)',
              graduatedIn: 'Graduated in may 2009 (years)',
              description: 'THE COMPLETE 2020 FLUTTER DEVELOPMENT BOOTCAMP LEARN FROM GOOGLE FLUTTER TEAM.',
            ),

          ],
        ),

      ],
    );
  }
}
