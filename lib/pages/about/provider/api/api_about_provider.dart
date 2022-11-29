import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/pages/about/model/about_model.dart';
import 'package:islam_portfolio/pages/about/model/constants.dart';

class ApiAboutProvider extends ChangeNotifier{
  final FirebaseFirestore firebaseFireStore;
  ApiAboutProvider({required this.firebaseFireStore});

  late AboutModel aboutModel;

  getData()async{
    QuerySnapshot snap = await FirebaseFirestore.instance.collection('collection').get();

    snap.docs.forEach((document) {
      print(document.id);
    });

  }

  Stream<QuerySnapshot> getAboutResponse({required int limit,}){

    FirebaseFirestore.instance.collection(AboutConstants.pathAboutCollection).limit(limit).get().then((snapshots) {
      print("snapshots= ${snapshots.docs.toString()}");
    });


    return firebaseFireStore.collection(AboutConstants.pathAboutCollection).limit(limit).snapshots();
  }

  // Stream<QuerySnapshot> getAboutResponse({required String groupChatId, required int limit,}) {
  //   return firebaseFireStore.collection(AboutConstants.pathAboutCollection).doc(groupChatId).collection(groupChatId).orderBy(FireStoreConstants.timestamp, descending: true).limit(limit).snapshots();
  // }
}


