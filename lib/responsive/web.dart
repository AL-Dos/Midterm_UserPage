import 'package:flutter/material.dart';

class WebBody extends StatelessWidget {
  const WebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: LayoutBuilder(builder: (context, constraints) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
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
                                  fontSize: 30,
                                  fontWeight: FontWeight.w200,
                                  height: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 500,
                                width: 400,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 500,
                                width: 400,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 500,
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange[600],
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(10, -75),
                                      child: Container(
                                        width: 190,
                                        height: 190,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
