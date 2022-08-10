import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'LoginPage.dart';
import 'UIHelper.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void logout() async {
      await FirebaseAuth.instance.signOut();
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return LoginPage();
        }),
      );
    }

    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListView(
                          children: [
                            Card(
                                child: ListTile(
                              leading: Icon(Icons.shopping_cart),
                              title: Text("Orders  "),
                            )),
                            Card(
                                child: ListTile(
                              leading: Icon(Icons.settings),
                              title: Text("Setting"),
                            )),
                            Card(
                              child: ListTile(
                                leading: Icon(Icons.payment),
                                title: Text("Payments"),
                              ),
                            ),
                            Card(
                                child: ListTile(
                              leading: Icon(Icons.verified_user),
                              title: Text("Become Seller"),
                            )),
                            Card(
                                child: ListTile(
                              leading: Icon(Icons.payments),
                              title: Text("Earning  "),
                            )),
                            GestureDetector(
                              onTap: () {
                                logout();
                              },
                              child: Card(
                                  child: ListTile(
                                leading: Icon(Icons.logout),
                                title: Text("Logout  "),
                              )),
                            ),
                          ],
                          shrinkWrap: true,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // ignore: dead_code
    );
  }
}
