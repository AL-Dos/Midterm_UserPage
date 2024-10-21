import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AndroidBody extends StatefulWidget {
  const AndroidBody({super.key});

  @override
  State<AndroidBody> createState() => _AndroidBodyState();
}

class _AndroidBodyState extends State<AndroidBody> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.9;
    final double buttonWidth = screenSize.width * 0.10;
    final double buttonHeight = screenSize.height * 0.05;
    const double containerHeight = 600;
    final double iconSize = screenSize.width * 0.07;

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
                  fontSize: screenSize.width * 0.2,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "I am a creative webdeveloper",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: screenSize.width * 0.04,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: containerWidth,
                height: 600,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildDetailsContainer(
                        screenSize, containerWidth, containerHeight, iconSize),
                    _buildAboutMeContainer(
                        screenSize, buttonWidth, buttonHeight),
                    _buildProfileContainer(
                        screenSize, containerWidth, containerHeight, iconSize),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const JumpingDotEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 16,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue,
                ),
              ),
              const SizedBox(height: 50),
            ],
          )),
        ));
  }

  Widget _buildDetailsContainer(Size screenSize, double containerWidth,
      double containerHeight, double iconSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenSize.width * 0.08)),
              const SizedBox(height: 25),
              Text(
                "Name:",
                style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                "Aldous Lambert Noel M. Omictin",
                style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 15),
              Text(
                "Age:",
                style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                "21 Years",
                style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 15),
              Text(
                "Location:",
                style: TextStyle(
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                "Padre Gomez St. Barangay 32-D Davao City",
                style: TextStyle(
                    fontSize: screenSize.width * 0.05,
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
                    _buildIcons(FontAwesomeIcons.facebook, Colors.black,
                        iconSize, 'https://www.facebook.com/Aldous.Lambert'),
                    _buildIcons(FontAwesomeIcons.xTwitter, Colors.black,
                        iconSize, 'https://x.com/lambertonator_'),
                    _buildIcons(FontAwesomeIcons.instagram, Colors.black,
                        iconSize, 'instagram.com/addu_cateneo/'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAboutMeContainer(
      Size screenSize, double buttonWidth, double buttonHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenSize.width * 0.9,
          height: 600,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("About me",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const SizedBox(height: 15),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                    fontSize: screenSize.width * 0.06,
                    fontWeight: FontWeight.w400,
                    height: 2),
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
                              fontSize: screenSize.width * 0.06,
                              color: Colors.grey[400]),
                          children: [
                            TextSpan(
                                text: 'Facebook',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: screenSize.width * 0.06,
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
                      side:
                          const BorderSide(color: Colors.deepOrange, width: 3),
                      padding: EdgeInsets.symmetric(
                          vertical: buttonHeight, horizontal: buttonWidth),
                    ),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                          fontSize: screenSize.width * 0.03,
                          color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProfileContainer(Size screenSize, double containerWidth,
      double containerHeight, double iconSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepOrange[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('lib/assets/Omictin_Profile_Image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'HELLO, I\'M\nALDOUS',
                style: TextStyle(
                    fontSize: screenSize.width * 0.1, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'I am an aspiring backend software engineer that can wants to make projects from concept to implementation and deployment.',
                style: TextStyle(
                    fontSize: screenSize.width * 0.05, color: Colors.white),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIcons(FontAwesomeIcons.facebook, Colors.white,
                        iconSize, 'https://www.facebook.com/Aldous.Lambert'),
                    _buildIcons(FontAwesomeIcons.xTwitter, Colors.white,
                        iconSize, 'https://x.com/lambertonator_'),
                    _buildIcons(FontAwesomeIcons.instagram, Colors.white,
                        iconSize, 'https://instagram.com/addu_cateneo/'),
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
