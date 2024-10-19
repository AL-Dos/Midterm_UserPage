import 'package:flutter/material.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double containerWidth = screenSize.width * 0.3;
    const double containerHeight = 600;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Details",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                              SizedBox(height: 25),
                              Text(
                                "Name:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Aldous Lambert Noel M. Omictin",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Age:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "21 Years",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Location:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Padre Gomez St. Barangay 32-D Davao City",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ],
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                              const SizedBox(height: 25),
                              const Text(
                                "Lorem ipsum...",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
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
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: 20,
                                                    color: Colors.grey[400]))
                                          ]),
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
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
                            ],
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
        ],
      ),
    );
  }
}
