import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:islam_portfolio/pages/about/model/constants.dart';

class AboutModel {
  bool showSection;
  String sectionTitle;
  String sectionSubTitle;
  String description;
  String vectorSvgUrl;

  AboutModel({
    required this.showSection,
    required this.sectionTitle,
    required this.sectionSubTitle,
    required this.description,
    required this.vectorSvgUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      AboutConstants.showSection: showSection,
      AboutConstants.sectionTitle: sectionTitle,
      AboutConstants.sectionSubTitle: sectionSubTitle,
      AboutConstants.description: description,
      AboutConstants.vectorSvgUrl: vectorSvgUrl,
    };
  }

  factory AboutModel.fromDocument(DocumentSnapshot doc) {
    bool showSection = doc.get(AboutConstants.showSection)??false;
    String sectionTitle = doc.get(AboutConstants.sectionTitle)??'';
    String sectionSubTitle = doc.get(AboutConstants.sectionSubTitle)??'';
    String description = doc.get(AboutConstants.description)??'';
    String vectorSvgUrl = doc.get(AboutConstants.vectorSvgUrl)??'';

    return AboutModel(
      showSection:showSection,
      sectionTitle:sectionTitle,
      sectionSubTitle:sectionSubTitle,
      description:description,
      vectorSvgUrl:vectorSvgUrl,
    );
  }
}
