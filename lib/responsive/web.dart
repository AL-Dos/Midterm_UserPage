import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.3;
    final double buttonWidth = screenSize.width * 0.03;
    final double buttonHeight = screenSize.height * 0.05;
    const double containerHeight = 600;
    final double iconSize = screenSize.width * 0.02;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.blue.shade200,
                  fontSize: screenSize.width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "I am a creative webdeveloper",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: screenSize.width * 0.013,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          const SizedBox(height: 25),
                          const Text(
                            "Name:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Aldous Lambert Noel M. Omictin",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Age:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "21 Years",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "Location:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            "Padre Gomez St. Barangay 32-D \nDavao City",
                            style: TextStyle(
                                fontSize: screenSize.width * 0.02,
                                fontWeight: FontWeight.w400),
                            softWrap: true,
                          ),
                          const SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildIcons(
                                    FontAwesomeIcons.facebook,
                                    Colors.black,
                                    iconSize,
                                    'https://www.facebook.com/Aldous.Lambert'),
                                _buildIcons(
                                    FontAwesomeIcons.xTwitter,
                                    Colors.black,
                                    iconSize,
                                    'https://x.com/lambertonator_'),
                                _buildIcons(
                                    FontAwesomeIcons.instagram,
                                    Colors.black,
                                    iconSize,
                                    'instagram.com/addu_cateneo/'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("About me",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        const SizedBox(height: 25),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                              fontSize: screenSize.width * 0.018,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                          textAlign: TextAlign.left,
                          softWrap: true,
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Flexible(
                              child: Text.rich(
                                TextSpan(
                                    text: 'Image by ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: screenSize.width * 0.018,
                                        color: Colors.grey[400]),
                                    children: [
                                      TextSpan(
                                          text: 'Facebook',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize:
                                                  screenSize.width * 0.018,
                                              color: Colors.grey[400]))
                                    ]),
                                softWrap: true,
                              ),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.deepOrange, width: 3),
                                    padding: EdgeInsets.symmetric(
                                        vertical: buttonHeight,
                                        horizontal: buttonWidth)),
                                child: Text(
                                  'CONTACT ME',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.010,
                                      color: Colors.black),
                                ),
                                onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange[600],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.translate(
                          offset: const Offset(3, -125),
                          child: Container(
                            width: 230,
                            height: 230,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'lib/assets/Omictin_Profile_Image.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, -100),
                          child: Text(
                            'HELLO, I\'M\nALDOUS',
                            style: TextStyle(
                                fontSize: screenSize.width * 0.030,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, -80),
                          child: Text(
                            'I am an aspiring backend software engineer that wants to make projects from concept to implementation to deployment.',
                            style: TextStyle(
                                fontSize: screenSize.width * 0.015,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildIcons(
                                  FontAwesomeIcons.facebook,
                                  Colors.white,
                                  iconSize,
                                  'https://www.facebook.com/Aldous.Lambert'),
                              _buildIcons(
                                  FontAwesomeIcons.xTwitter,
                                  Colors.white,
                                  iconSize,
                                  'https://x.com/lambertonator_'),
                              _buildIcons(
                                  FontAwesomeIcons.instagram,
                                  Colors.white,
                                  iconSize,
                                  'https://instagram.com/addu_cateneo/'),
                              _buildIcons(
                                  FontAwesomeIcons.linkedin,
                                  Colors.white,
                                  iconSize,
                                  'https://www.linkedin.com/in/aldous-lambert-noel-omictin-378b6230b/'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String urlString) async {
  Uri url = Uri.parse(urlString);
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception("Could not launch $url");
  }
}

Widget _buildIcons(
    IconData iconIMG, Color iconColor, double iconSize, String url) {
  return IconButton(
    icon: FaIcon(
      iconIMG,
      color: iconColor,
      size: iconSize,
    ),
    onPressed: () => _launchURL(url),
  );
}
