import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.3;
    const double containerHeight = 600;
    final double iconSize = screenSize.width * 0.03;

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
              const Text(
                "I am a creative webdeveloper",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                            const Text(
                              "Padre Gomez St. Barangay 32-D \nDavao City",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildIcons(FontAwesomeIcons.facebook,
                                      Colors.black, iconSize),
                                  _buildIcons(FontAwesomeIcons.xTwitter,
                                      Colors.black, iconSize),
                                  _buildIcons(FontAwesomeIcons.instagram,
                                      Colors.black, iconSize),
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
                          const Text(
                            "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, sed do \neiusmod tempor incididunt ut labore \net dolore magna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris nisi ut \naliquip ex ea commodo consequat.",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 2),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
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
                                          fontSize: 20,
                                          color: Colors.grey[400]),
                                      children: [
                                        TextSpan(
                                            text: 'Facebook',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontSize: 20,
                                                color: Colors.grey[400]))
                                      ]),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                          const SizedBox(height: 25),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const SizedBox(width: 25),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.deepOrange, width: 3),
                                        padding: EdgeInsets.symmetric(
                                            vertical: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            horizontal: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04)),
                                    child: Text(
                                      'CONTACT ME',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02,
                                          color: Colors.black),
                                    ),
                                    onPressed: () {}),
                              ],
                            ),
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.translate(
                              offset: const Offset(0, -125),
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
                              child: const Text(
                                'HELLO, I\'M\nALDOUS',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Transform.translate(
                              offset: const Offset(0, -80),
                              child: const Text(
                                'I am an aspiring backend software \nengineer who can approach projects \nfrom concept to implementation to \ndeploment.',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                                textAlign: TextAlign.center,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildIcons(FontAwesomeIcons.facebook,
                                      Colors.white, iconSize),
                                  _buildIcons(FontAwesomeIcons.xTwitter,
                                      Colors.white, iconSize),
                                  _buildIcons(FontAwesomeIcons.instagram,
                                      Colors.white, iconSize),
                                  _buildIcons(FontAwesomeIcons.linkedin,
                                      Colors.white, iconSize),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildIcons(IconData iconIMG, Color iconColor, double iconSize) {
  return IconButton(
    icon: FaIcon(
      iconIMG,
      color: iconColor,
      size: iconSize,
    ),
    onPressed: () {},
  );
}
