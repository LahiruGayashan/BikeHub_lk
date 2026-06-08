import 'package:flutter/material.dart';
import 'splash_screen_two.dart';

class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({super.key});

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

                      /// SEARCH BAR
                      Container(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(18),
                        ),

                        child: Row(
                          children: [

                            Icon(
                              Icons.search,
                              color: Colors.grey.shade600,
                              size: 18,
                            ),

                            const SizedBox(width: 10),

                            Text(
                              "Search bikes...",
                              style: TextStyle(
                                color:
                                    Colors.grey.shade500,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              "Filter",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),

                            const SizedBox(width: 5),

                            const Icon(
                              Icons.tune,
                              size: 18,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 15),

                      /// TAGS
                      Row(
                        children: [

                          brandTag(
                            "Yamaha",
                            Colors.orange.shade100,
                            Colors.orange,
                          ),

                          const SizedBox(width: 8),

                          brandTag(
                            "Honda",
                            Colors.cyan.shade100,
                            Colors.cyan,
                          ),

                          const SizedBox(width: 8),

                          brandTag(
                            "Kawasaki",
                            Colors.grey.shade200,
                            Colors.black54,
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      /// CHAT AREA
                      Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                          Expanded(
                            child: Column(
                              children: [

                                Container(
                                  padding:
                                      const EdgeInsets.all(
                                          16),

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius
                                            .circular(18),
                                  ),

                                  child: const Text(
                                    "Is this still available?",
                                    style: TextStyle(
                                      height: 1.5,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 12),

                                Align(
                                  alignment:
                                      Alignment.centerRight,

                                  child: Container(
                                    padding:
                                        const EdgeInsets
                                            .symmetric(
                                      horizontal: 16,
                                      vertical: 14,
                                    ),

                                    decoration:
                                        BoxDecoration(
                                      color:
                                          Colors.orange,
                                      borderRadius:
                                          BorderRadius
                                              .circular(
                                                  18),
                                    ),

                                    child: const Text(
                                      "Yes! DM me 🔥",
                                      style: TextStyle(
                                        color:
                                            Colors.white,
                                        fontWeight:
                                            FontWeight
                                                .w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 14),

                          Column(
                            children: [

                              Container(
                                width: 90,

                                decoration:
                                    BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius
                                          .circular(18),
                                ),

                                child: Column(
                                  children: [

                                    Stack(
                                      children: [

                                        ClipRRect(
                                          borderRadius:
                                              const BorderRadius
                                                  .vertical(
                                            top:
                                                Radius.circular(
                                                    18),
                                          ),

                                          child:
                                              Image.network(
                                            "https://images.unsplash.com/photo-1558981806-ec527fa84c39",
                                            height: 80,
                                            width: 90,
                                            fit:
                                                BoxFit.cover,
                                          ),
                                        ),

                                        Positioned(
                                          right: 8,
                                          top: 8,

                                          child: Container(
                                            padding:
                                                const EdgeInsets
                                                    .all(
                                                        5),

                                            decoration:
                                                const BoxDecoration(
                                              color:
                                                  Colors.white,
                                              shape: BoxShape
                                                  .circle,
                                            ),

                                            child:
                                                const Icon(
                                              Icons.favorite,
                                              color: Colors.orange,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const Padding(
                                      padding:
                                          EdgeInsets.all(8),

                                      child: Text(
                                        "❤️ Saved",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 12),

                              Container(
                                width: 90,
                                padding:
                                    const EdgeInsets.all(
                                        16),

                                decoration:
                                    BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius
                                          .circular(18),
                                ),

                                child: const Column(
                                  children: [

                                    Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),

                                    SizedBox(height: 6),

                                    Text(
                                      "My Listing",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),

                /// TITLE
                const Text(
                  "Explore, Chat &",
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
                        text: "Manage",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.cyan,
                          fontWeight:
                              FontWeight.w300,
                        ),
                      ),

                      const TextSpan(
                        text: " Your Rides",
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
                  "Search listings with smart filters, chat with sellers in real-time, save your favorites, and manage your own listings — all in one place.",

                  style: TextStyle(
                    height: 1.8,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 25),

                /// FEATURE CARD 1
                featureItem(
                  icon: Icons.chat_bubble,
                  iconColor: Colors.cyan,
                  iconBg: const Color(0xffDDF7FB),
                  title: "Chat with Sellers",
                  subtitle:
                      "Instant messaging with real-time notifications",
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Container(
                        width: 8,
                        height: 8,

                        decoration:
                            const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),

                      const SizedBox(width: 5),

                      Text(
                        "Live",
                        style: TextStyle(
                          color:
                              Colors.green.shade600,
                          fontWeight:
                              FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                /// FEATURE CARD 2
                featureItem(
                  icon: Icons.favorite,
                  iconColor: Colors.orange,
                  iconBg: const Color(0xffFFF1E8),
                  title: "Save Favorites",
                  subtitle:
                      "Bookmark listings and get price drop alerts",
                  trailing: const Icon(
                    Icons.notifications,
                    color: Colors.orange,
                    size: 18,
                  ),
                ),

                const SizedBox(height: 15),

                /// FEATURE CARD 3
                featureItem(
                  icon: Icons.list_alt,
                  iconColor: Colors.white,
                  iconBg: const Color(0xff111827),
                  title: "Manage Listings",
                  subtitle:
                      "Edit, boost, or remove your listings anytime",
                  trailing: const Icon(
                    Icons.open_in_new,
                    color: Colors.grey,
                    size: 18,
                  ),
                ),

                const SizedBox(height: 22),

                /// STATS
                Row(
                  children: [

                    Expanded(
                      child: statsCard(
                        "50K+",
                        "Active Riders",
                        Colors.orange,
                        const Color(0xffFFF4EC),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: statsCard(
                        "1.2K",
                        "Live Listings",
                        Colors.cyan,
                        const Color(0xffEEF9FF),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: statsCard(
                        "4.9★",
                        "App Rating",
                        Colors.black87,
                        const Color(0xffF4F4F5),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                /// BUTTONS
                Row(
                  children: [

                    Container(
                      height: 55,
                      width: 55,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(18),

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(
                                    0.05),
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
                                  const SplashScreenTwo(),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: Container(
                        height: 55,

                        decoration: BoxDecoration(
                          gradient:
                              LinearGradient(
                            colors: [
                              Colors.orange
                                  .shade400,
                              Colors.orange
                                  .shade600,
                            ],
                          ),

                          borderRadius:
                              BorderRadius.circular(
                                  18),
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
                              Icons.rocket_launch,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Center(
                  child: Text(
                    "• Join 50,000+ riders on MotoXchange",
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

  Widget brandTag(
    String title,
    Color bg,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      decoration: BoxDecoration(
        color: bg,
        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget featureItem({
    required IconData icon,
    required Color iconColor,
    required Color iconBg,
    required String title,
    required String subtitle,
    required Widget trailing,
  }) {

    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(0.03),
            blurRadius: 8,
          )
        ],
      ),

      child: Row(
        children: [

          Container(
            height: 50,
            width: 50,

            decoration: BoxDecoration(
              color: iconBg,
              borderRadius:
                  BorderRadius.circular(15),
            ),

            child: Icon(
              icon,
              color: iconColor,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),

          trailing,
        ],
      ),
    );
  }

  Widget statsCard(
    String number,
    String title,
    Color color,
    Color bg,
  ) {

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),

      decoration: BoxDecoration(
        color: bg,
        borderRadius:
            BorderRadius.circular(18),

        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),

      child: Column(
        children: [

          Text(
            number,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            title,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}