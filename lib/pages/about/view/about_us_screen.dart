import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/about/model/about_model.dart';
import 'package:islam_portfolio/pages/about/provider/api/api_about_provider.dart';
import 'package:islam_portfolio/pages/about/view/widget/section_who_am_card_widget.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/widgets/loading_widget.dart';
import 'package:provider/provider.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    ApiAboutProvider aboutProvider =Provider.of<ApiAboutProvider>(context);

    return StreamBuilder<QuerySnapshot>(
      stream:aboutProvider.getAboutResponse(limit: 100),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {


        if (snapshot.hasData) {
          if (snapshot.data!.docs.isNotEmpty) {
            snapshot.data?.docs.map((doc) {
              AboutModel aboutModel = AboutModel.fromDocument(doc);

              // your widget here(use doc data)
              return Column(
                children: [
                  /// who am i card
                  SectionWhoAmCardWidget(
                    title: aboutModel.sectionTitle,
                    subTitle: 'Hello! I am Islam Nasser. Mobile App Developer',
                    mySummary: 'An experienced Flutter developer More than 3 years, and I developed more than 10 Apps now on Google play, App Store, to be part of a reputable organisation that provides steady professional growth along with job satisfaction and challenges and to make a valuable contribution to the success of the organisation.',
                    aboutVectorImg: 'about_us_vector',
                  ),

                ],
              );
            });

          }
          else {
            return const Center(
              child: Text("Nothing here.."),
            );
          }
        }
        return LoadingAnimationWidget(size: SizeConfig.height*0.05, color: ColorConfig().loadingOrangeColor(1),);

      },
    );
  }
}
