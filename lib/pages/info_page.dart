import 'package:bmi_calculator_dave/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_dave/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INFORMATION"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/dave.JPG"),
              radius: 100,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            DetailsCard(text: "Israel Dave Laguitnay", icon: Icons.person),
            DetailsCard(
                text: "israeldavelaguitnay@outlook.com", icon: Icons.email),
            DetailsCard(text: "+639453085830", icon: Icons.phone),
            DetailsCard(
                text: "Mandaluyong City, Philippines",
                icon: Icons.location_on_rounded),
            SizedBox(
              height: 25,
            ),
            //Social media buttons
            ReusableCard(
              colour: kCardColor,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ButtonSocialMedia(
                  //     website:
                  //         "https://web.facebook.com/israeldave.laguitnay.23",
                  //     iconButton: FontAwesomeIcons.facebook),
                  // ButtonSocialMedia(
                  //     website: "https://github.com/israeldave23",
                  //     iconButton: FontAwesomeIcons.github),
                  // ButtonSocialMedia(
                  //     website: "https://www.youtube.com/@idviz1772",
                  //     iconButton: FontAwesomeIcons.youtube),
                  // ButtonSocialMedia(
                  //     website:
                  //         "https://www.linkedin.com/in/israel-dave-laguitnay-9a7271260/",
                  //     iconButton: FontAwesomeIcons.linkedin),
                  ButtonSocialMedia(
                      url: Uri.parse(
                          "https://web.facebook.com/israeldave.laguitnay.23"),
                      iconButton: FontAwesomeIcons.facebook),
                  ButtonSocialMedia(
                      url: Uri.parse("https://github.com/israeldave23"),
                      iconButton: FontAwesomeIcons.github),
                  ButtonSocialMedia(
                      url: Uri.parse("https://www.youtube.com/@idviz1772"),
                      iconButton: FontAwesomeIcons.youtube),
                  ButtonSocialMedia(
                      url: Uri.parse(
                          "https://www.linkedin.com/in/israel-dave-laguitnay-9a7271260/"),
                      iconButton: FontAwesomeIcons.linkedin),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonSocialMedia extends StatelessWidget {
  // const ButtonSocialMedia({Key? key}) : super(key: key);

  final IconData iconButton;

  final Uri url;

  // Future<void> _launchURL(String url) async {
  //   final Uri uri = Uri(scheme: "https", host: url);
  //   if (!await launchUrl(
  //     uri,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw "Can not launch url";
  //   }
  // }

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  ButtonSocialMedia({required this.url, required this.iconButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () async {
          // final Uri uri = Uri.parse(website);
          // launchUrl(uri);
          // _launchURL(website);
          // final url = website;
          _launchUrl();
        },
        child: Icon(
          iconButton,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  DetailsCard({required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      margin: EdgeInsets.all(15.0),
      color: kCardColor,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            icon,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        title: Text(
          text,
          style: kLabelTextStyle,
        ),
      ),
    );
  }
}
