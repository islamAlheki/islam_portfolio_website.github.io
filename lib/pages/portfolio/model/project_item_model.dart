import 'package:flutter/material.dart';

// main project items
class ProjectItemModel {
  final Color appMainColor;
  // final Color appSecondaryColor;
  final String iconUrl;
  final String appName;
  final String appBio;
  final String fullDescription;
  final List<ProjectFutureItemModel> futureList;
  final String mainPreviewImage;
  final String appStoreUrl;
  final String playStoreUrl;
  final List<PlatformItemModel> platformsList;
  final String presentationImage;

  const ProjectItemModel({
    required this.appMainColor,
    // required this.appSecondaryColor,
    required this.iconUrl,
    required this.appName,
    required this.appBio,
    required this.futureList,
    required this.fullDescription,
    required this.mainPreviewImage,
    required this.appStoreUrl,
    required this.playStoreUrl,
    required this.platformsList,
    required this.presentationImage,
  });
}


// app Futures
class ProjectFutureItemModel {
  final String future;

  const ProjectFutureItemModel({
    required this.future,
  });
}


//project apps android and ios
class PlatformItemModel {
  final String platformName;
  final String platformIcon;

  const PlatformItemModel({
    required this.platformName,
    required this.platformIcon,
  });
}