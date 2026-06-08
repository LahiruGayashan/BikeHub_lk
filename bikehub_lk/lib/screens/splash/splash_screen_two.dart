import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'splash_screen_three.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FB),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),

          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                const SizedBox(height: 10),

                /// TOP BAR
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    Row(
                      children: [

                        Container(
                          height: 34,
                          width: 34,

                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.circular(10),
                          ),

                          child: const Icon(
                            Icons.motorcycle,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),

                        const SizedBox(width: 10),

                        RichText(
                          text: TextSpan(
                            children: [

                              const TextSpan(
                                text: "MOTO",
                                style: TextStyle(
                                  color: Color(0xff1E293B),
                                  fontSize: 22,
                                  fontWeight:
                                      FontWeight.w300,
                                ),
                              ),

                              TextSpan(
                                text: "SELL",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 22,
                                  fontWeight:
                                      FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// STEP
                Row(
                  children: [

                    Container(
                      width: 14,
                      height: 6,

                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Container(
                      width: 34,
                      height: 6,

                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Text(
                      "Step 2 of 2",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// MAIN CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),

                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffEEF9FF),
                        Color(0xffFFF4EC),
                      ],
                    ),

                    borderRadius:
                        BorderRadius.circular(25),
                  ),

                  child: Column(
                    children: [

                      /// STATUS
                      Align(
                        alignment: Alignment.topLeft,

                        child: Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 7,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(25),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.03),
                                blurRadius: 8,
                              )
                            ],
                          ),

                          child: const Row(
                            mainAxisSize:
                                MainAxisSize.min,

                            children: [

                              Icon(
                                Icons.flash_on,
                                color: Colors.orange,
                                size: 16,
                              ),

                              SizedBox(width: 5),

                              Text(
                                "Fast & Secure",
                                style: TextStyle(
                                  fontWeight:
                                      FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// IMAGE
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(20),

                        child: Image.network(
                          "https://images.unsplash.com/photo-1580310614729-ccd69652491d",
                          height: 190,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// VERIFIED TAG
                      Container(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 9,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(30),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.03),
                              blurRadius: 6,
                            )
                          ],
                        ),

                        child: const Row(
                          mainAxisSize:
                              MainAxisSize.min,

                          children: [

                            Icon(
                              Icons.verified,
                              color: Colors.green,
                              size: 18,
                            ),

                            SizedBox(width: 5),

                            Text(
                              "Verified Sellers",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),

                /// TITLE
                const Text(
                  "Connect with",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff1E293B),
                    fontWeight: FontWeight.w300,
                  ),
                ),

                RichText(
                  text: TextSpan(
                    children: [

                      TextSpan(
                        text: "Riders",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                          fontWeight:
                              FontWeight.w300,
                        ),
                      ),

                      const TextSpan(
                        text: " Everywhere",
                        style: TextStyle(
                          fontSize: 40,
                          color:
                              Color(0xff1E293B),
                          fontWeight:
                              FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                const Text(
                  "Chat with buyers instantly, discover trusted dealers, and explore Sri Lanka’s largest bike riding community.",

                  style: TextStyle(
                    height: 1.8,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 25),

                /// FEATURES
                Container(
                  padding: const EdgeInsets.all(18),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(20),

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(
                                0.03),
                        blurRadius: 8,
                      )
                    ],
                  ),

                  child: const Column(
                    children: [

                      Row(
                        children: [

                          Icon(
                            Icons.chat,
                            color: Colors.cyan,
                          ),

                          SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              "Instant Live Chat with buyers",
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      Row(
                        children: [

                          Icon(
                            Icons.security,
                            color: Colors.green,
                          ),

                          SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              "Verified seller protection",
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      Row(
                        children: [

                          Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),

                          SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              "Find bikes near your location",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),

                /// BUTTONS
                Row(
                  children: [

                    /// BACK BUTTON
                    Container(
                      height: 55,
                      width: 55,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(18),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.05),
                            blurRadius: 10,
                          )
                        ],
                      ),

                      child: IconButton(
                        icon:
                            const Icon(Icons.arrow_back),

                        onPressed: () {

                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder: (context) =>
                                  const SplashScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(width: 15),

                    /// GET STARTED BUTTON
                    Expanded(
                      child: GestureDetector(

                        onTap: () {

                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder: (context) =>
                                  const SplashScreenThree(),
                            ),
                          );
                        },

                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            gradient:
                                LinearGradient(
                              colors: [
                                Colors.orange.shade400,
                                Colors.orange.shade600,
                              ],
                            ),

                            borderRadius:
                                BorderRadius.circular(
                                    18),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.orange
                                    .withOpacity(0.25),
                                blurRadius: 10,
                              )
                            ],
                          ),

                          child: const Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center,

                            children: [

                              Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight:
                                      FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),

                              SizedBox(width: 10),

                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                Center(
                  child: Text(
                    "• Trusted by 50,000+ Sri Lankan riders",
                    style: TextStyle(
                      color:
                          Colors.green.shade600,
                      fontWeight:
                          FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}