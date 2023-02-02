import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogInOptionScreenController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;
  Future<UserCredential> signInWithGoogle() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      isLoading.value = false;
      return await auth.signInWithCredential(credential);
    } catch (e) {
      log("ERROR :: $e");
      isLoading.value = false;
      throw Exception(e);
    }
  }

  googleSignOut() async {
    final logOut = await GoogleSignIn().signOut();
  }

  // Future<UserCredential?> facebookSignIn() async {
  //   try {
  //     final LoginResult result = await FacebookAuth.instance.login();
  //     print("RESULT:::::::::::${result.message}");
  //
  //     final OAuthCredential facebookAuthCredential =
  //         FacebookAuthProvider.credential(result.accessToken!.token);
  //     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  //   } catch (e) {
  //     print("ERROR:::::::::::::$e");
  //   }
  //   return null;
  // }

  facebookSignIn() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance
        .login(permissions: ['email', 'public_profile', 'user_birthday']);

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    final userData = await FacebookAuth.instance.getUserData();
    // userEmail = userData["email"];

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  // facebookSignIn() async {
  //   try {
  //     // final LoginResult result = await FacebookAuth.instance.login();
  //     final result = await FacebookAuth.instance.login();
  //     log("RESULT STATUS => ${result.status}");
  //     if (result.status == LoginStatus.success) {
  //       final userData = await FacebookAuth.instance.getUserData();
  //       if (userData['email'] == null) {
  //         Get.snackbar("Email", "email must be required");
  //       } else {
  //         log(" USERDATA => $userData");
  //         log(userData['email']);
  //         log(userData['name']);
  //         log(userData['picture']['data']['url']);
  //       }
  //     } else {
  //       Get.snackbar("Error", "Facebook auth failed");
  //     }
  //     /*final OAuthCredential facebookAuthCredential =
  //         FacebookAuthProvider.credential(result.accessToken!.token);
  //     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);*/
  //   } catch (e) {
  //     print("ERROR => $e");
  //   }
  //   return null;
  // }
}
