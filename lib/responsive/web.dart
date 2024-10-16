import 'package:flutter/material.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 80),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.blue.shade200,
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "I am a creative webdeveloper",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 500,
                                width: 400,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Aldous Lambert Noel M. Omictin",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Age:",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "21 Years",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Location:",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Padre Gomez St. Barangay 32-D Davao City",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 500,
                                width: 400,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(height: 25),
                                    Row(
                                      children: [
                                        Text(
                                          "Image by",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20,
                                              color: Colors.grey[400]),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "Facebook",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20,
                                              color: Colors.grey[400]),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 500,
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange[600],
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: const Center(
                                  child: Text(
                                    'Display',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
