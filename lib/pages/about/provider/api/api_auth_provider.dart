// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dashboard_islam/pages/about/model/constants.dart';
// import 'package:dashboard_islam/helper/shared_preference.dart';
// import 'package:dashboard_islam/pages/login/model/constants.dart';
// import 'package:dashboard_islam/pages/login/model/user_model.dart';
// import 'package:dashboard_islam/pages/login/provider/api/auth_helper.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
//
//
// class ApiAuthProvider extends ChangeNotifier{
//   bool isWaiting=false;
//   final FirebaseAuth firebaseAuth;
//   final FirebaseFirestore firebaseFireStore;
//
//   ApiAuthProvider({required this.firebaseFireStore, required this.firebaseAuth});
//
//   AuthStatus _status = AuthStatus.uninitialized;
//   AuthStatus get status => _status;
//
//
//   Future<bool> signInResponse({required String email,required String password,}) async {
//     _status = AuthStatus.authenticating;
//     _dataLoading();
//     notifyListeners();
//     try {
//       await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
//       final QuerySnapshot result = await firebaseFireStore.collection(UserConstants.pathUserCollection).where(UserConstants.userId, isEqualTo: firebaseAuth.currentUser!.uid).get();
//       final List<DocumentSnapshot> documents = result.docs;
//
//       if (documents.isNotEmpty) {
//         DocumentSnapshot documentSnapshot = documents[0];
//         UserModel userModel = UserModel.fromDocument(documentSnapshot);
//         if (kDebugMode) {
//           print(userModel);
//         }
//         _status = AuthStatus.authenticated;
//         _dataGotIt();
//         notifyListeners();
//         return true;
//       }
//
//       else {
//         _status = AuthStatus.authenticated;
//         notifyListeners();
//         if (kDebugMode) {
//           print("sign in user not found");
//         }
//
//         _dataGotIt();
//         return false;
//       }
//
//     } on FirebaseAuthException catch(e) {
//       _status = AuthStatus.authenticateError;
//
//       if (kDebugMode) {
//         print("user login exception = ${e.message}");
//       }
//       _dataGotIt();
//       notifyListeners();
//       return false;
//     }
//
//   }
//
//
//
//   Future<bool> signUpResponse({required String email,required String name,required String password,}) async {
//     _status = AuthStatus.authenticating;
//     notifyListeners();
//
//     try {
//       await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
//       await firebaseAuth.currentUser!.updateDisplayName(name);
//
//       print("uid = ${firebaseAuth.currentUser!.uid}");
//       print("displayName = ${firebaseAuth.currentUser!.displayName}");
//       print("photoURL = ${firebaseAuth.currentUser!.photoURL}");
//       print("email = ${firebaseAuth.currentUser!.email}");
//
//       //
//       firebaseFireStore.collection(UserConstants.pathUserCollection).doc(firebaseAuth.currentUser!.uid).set({
//         UserConstants.userId: firebaseAuth.currentUser!.uid.toString(),
//         UserConstants.fullName: firebaseAuth.currentUser!.displayName!.toString(),
//         UserConstants.image: "",
//         UserConstants.email: firebaseAuth.currentUser!.email!.toString().toString(),
//         UserConstants.createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
//       });
//
//       _status = AuthStatus.authenticated;
//       _dataGotIt();
//       notifyListeners();
//       return true;
//
//     } on FirebaseAuthException catch(e) {
//       _status = AuthStatus.authenticateError;
//       if (kDebugMode) {
//         print("user login exception = ${e.message}");
//       }
//       _dataGotIt();
//       notifyListeners();
//       return false;
//     }
//
//   }
//
//
//   Future<bool> signOutResponse() async {
//     _status = AuthStatus.uninitialized;
//     await firebaseAuth.signOut();
//     UserDataFromStorage.setUserIsGuest(true);
//     UserDataFromStorage.setUserId('-1');
//     UserDataFromStorage.setFullName('');
//     UserDataFromStorage.setUserImage('');
//     UserDataFromStorage.setUserEmail('');
//     notifyListeners();
//     return true;
//   }
//
//
//
//
//   _dataLoading(){
//     isWaiting = true;
//     notifyListeners();
//   }
//
//   _dataGotIt(){
//     isWaiting = false;
//     notifyListeners();
//   }
//
//
// }
//
//
