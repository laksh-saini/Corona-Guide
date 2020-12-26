import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Covid-19'),
          centerTitle: true,
          elevation: 7,
        ),*/
        body: Column(children: [
      Column(
        children: <Widget>[
          Container(
              height: 210,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Colors.redAccent,
                    Colors.red[400],
                  ])),
              child: Center(
                child: Text('Welcome',
                    style: GoogleFonts.inter(
                      fontSize: 35,
                      color: Colors.white,
                    )),
              ))
        ],
      ),
      Column(
        children: [
          Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading:
                    CircleAvatar(backgroundImage: AssetImage("assets/j.png")),
                title: Text('What precautions to take?'),
                subtitle:
                    Text('Taking precautions to take to prevent Covid-19...'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'Go',
                      style: TextStyle(color: Colors.red),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/p');
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          )),
          SizedBox(height: 10),
          Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.icons8.com/bubbles/2x/coronavirus.png")),
                title: Text('Check the number of cases in your area.'),
                subtitle: Text(''),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child:
                        const Text('Go', style: TextStyle(color: Colors.red)),
                    onPressed: () async {
                      const url =
                          "https://covid19.who.int/?gclid=CjwKCAiA_eb-BRB2EiwAGBnXXp9IhVR9l4q8xSsj-osfql1ABXDA7UwjEFslv8jaV2-irdkfyNN2UBoC4ToQAvD_BwE";
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: true,
                          forceWebView: true,
                          enableJavaScript: true,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          )),
          SizedBox(height: 10),
          Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdnuploads.aa.com.tr/uploads/Contents/2020/05/05/thumbs_b_c_2489482bd2a066c940be9ea8ac358737.jpg?v=174117")),
                title: Text('Report a case '),
                subtitle: Text(
                    'You can help the government by reporting cases to avoid transmission'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child:
                        const Text('Go', style: TextStyle(color: Colors.red)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/c');
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          )),
        ],
      )
    ]));
  }
}
