import 'package:flutter/material.dart';
import 'package:talent_acquisition_exploer/screens/Drawer.dart';

class SiteApplet extends StatelessWidget {
  static const routeName = 'applet/SiteApplet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Site Applet',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              height: 0,
              // decoration: BoxDecoration(border: Border.all()),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 5),
                // color: Colors.deepOrange.withOpacity(1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Site',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Applet',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Exploer',
                      style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
