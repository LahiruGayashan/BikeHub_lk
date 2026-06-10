import 'package:flutter/material.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF5F9FD),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              /// TOP SECTION
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffEAF7FF),
                      Color(0xffF4FBFF),
                    ],
                  ),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    /// APP BAR
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,

                      children: [

                        Row(
                          children: [

                            Container(
                              height: 42,
                              width: 42,

                              decoration:
                                  BoxDecoration(
                                color:
                                    Colors.orange,
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            14),

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .orange
                                        .withOpacity(
                                            0.3),
                                    blurRadius: 10,
                                  )
                                ],
                              ),

                              child: const Icon(
                                Icons.motorcycle,
                                color:
                                    Colors.white,
                              ),
                            ),

                            const SizedBox(
                                width: 12),

                            RichText(
                              text:
                                  const TextSpan(
                                children: [

                                  TextSpan(
                                    text: "MOTO",
                                    style:
                                        TextStyle(
                                      color: Color(
                                          0xff1E293B),
                                      fontSize:
                                          28,
                                      fontWeight:
                                          FontWeight
                                              .w300,
                                    ),
                                  ),

                                  TextSpan(
                                    text:
                                        "XCHANGE",
                                    style:
                                        TextStyle(
                                      color:
                                          Colors.orange,
                                      fontSize:
                                          28,
                                      fontWeight:
                                          FontWeight
                                              .w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [

                            Container(
                              padding:
                                  const EdgeInsets
                                      .all(12),

                              decoration:
                                  BoxDecoration(
                                color:
                                    Colors.white,
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            18),

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .black
                                        .withOpacity(
                                            0.05),
                                    blurRadius: 10,
                                  )
                                ],
                              ),

                              child: Stack(
                                children: [

                                  const Icon(
                                    Icons
                                        .notifications,
                                    color: Colors
                                        .black54,
                                  ),

                                  Positioned(
                                    right: 0,
                                    top: 0,

                                    child:
                                        Container(
                                      height: 8,
                                      width: 8,

                                      decoration:
                                          const BoxDecoration(
                                        color:
                                            Colors.orange,
                                        shape: BoxShape
                                            .circle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            const SizedBox(
                                width: 10),

                            CircleAvatar(
                              radius: 24,
                              backgroundColor:
                                  Colors.orange
                                      .shade100,

                              child: const Icon(
                                Icons.person,
                                color:
                                    Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      "Good morning, Rider 👋",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 8),

                    RichText(
                      text: TextSpan(
                        children: [

                          const TextSpan(
                            text: "Find Your ",
                            style: TextStyle(
                              color:
                                  Color(0xff1E293B),
                              fontSize: 40,
                              fontWeight:
                                  FontWeight.w300,
                            ),
                          ),

                          TextSpan(
                            text: "Perfect Ride",
                            style: TextStyle(
                              color:
                                  Colors.orange
                                      .shade400,
                              fontSize: 40,
                              fontWeight:
                                  FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    /// SEARCH
                    Container(
                      padding:
                          const EdgeInsets
                              .symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),

                      decoration:
                          BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius
                                .circular(22),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(
                                    0.04),
                            blurRadius: 10,
                          )
                        ],
                      ),

                      child: Row(
                        children: [

                          const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),

                          const SizedBox(
                              width: 10),

                          Expanded(
                            child: TextField(
                              decoration:
                                  InputDecoration(
                                border:
                                    InputBorder
                                        .none,

                                hintText:
                                    "Search bikes...",

                                hintStyle:
                                    TextStyle(
                                  color: Colors
                                      .grey
                                      .shade500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              /// FEATURED HEADER
              sectionHeader(
                "Featured Bikes",
                "See All",
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 250,

                child: ListView(
                  scrollDirection:
                      Axis.horizontal,

                  padding:
                      const EdgeInsets
                          .symmetric(
                    horizontal: 20,
                  ),

                  children: [

                    featuredBikeCard(
                      "Kawasaki Ninja ZX-10R",
                      "2024 • Sport • 1000cc",
                      "\$18,500",
                      Colors.red,
                    ),

                    const SizedBox(width: 18),

                    featuredBikeCard(
                      "Harley Sportster S",
                      "2022 • Cruiser • 1252cc",
                      "\$12,900",
                      Colors.black,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              sectionHeader(
                "Nearby Listings",
                "See All",
              ),

              const SizedBox(height: 20),

              nearbyCard(
                "Yamaha MT-07",
                "2023 • Naked • 689cc",
                "\$8,200",
                "0.8 mi away",
                Colors.blue,
              ),

              nearbyCard(
                "Honda CBR600RR",
                "2021 • Sport • 599cc",
                "\$9,750",
                "1.4 mi away",
                Colors.red,
              ),

              const SizedBox(height: 120),
            ],
          ),
        ),
      ),

      /// BOTTOM NAVIGATION
      bottomNavigationBar: Container(
        height: 90,

        decoration: const BoxDecoration(
          color: Colors.white,

          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            )
          ],
        ),

        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround,

          children: [

            navItem(
              Icons.home,
              "Home",
              true,
            ),

            navItem(
              Icons.search,
              "Search",
              false,
            ),

            navItem(
              Icons.favorite_border,
              "Favorites",
              false,
            ),

            Container(
              height: 65,
              width: 65,

              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,

                boxShadow: [
                  BoxShadow(
                    color: Colors.orange
                        .withOpacity(0.3),
                    blurRadius: 12,
                  )
                ],
              ),

              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 34,
              ),
            ),

            navItem(
              Icons.chat_bubble_outline,
              "Chat",
              false,
            ),

            /// PROFILE NAVIGATION
            GestureDetector(

              onTap: () {

                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) =>
                        const ProfileScreen(),
                  ),
                );
              },

              child: navItem(
                Icons.person_outline,
                "Profile",
                false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionHeader(
    String title,
    String action,
  ) {

    return Padding(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 20,
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,

        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w300,
              color: Color(0xff1E293B),
            ),
          ),

          Text(
            action,
            style: TextStyle(
              color:
                  Colors.orange.shade700,
              fontWeight:
                  FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget featuredBikeCard(
    String title,
    String subtitle,
    String price,
    Color color,
  ) {

    return Container(
      width: 230,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(25),

        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
                    0.04),
            blurRadius: 10,
          )
        ],
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Align(
            alignment: Alignment.topRight,

            child: CircleAvatar(
              radius: 18,
              backgroundColor:
                  Colors.grey.shade100,

              child: const Icon(
                Icons.favorite_border,
                size: 18,
                color: Colors.grey,
              ),
            ),
          ),

          Center(
            child: Icon(
              Icons.motorcycle,
              color: color,
              size: 90,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              fontSize: 19,
              fontWeight:
                  FontWeight.w500,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),

          const Spacer(),

          Text(
            price,
            style: TextStyle(
              color:
                  Colors.orange.shade700,
              fontSize: 26,
              fontWeight:
                  FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget nearbyCard(
    String title,
    String subtitle,
    String price,
    String distance,
    Color color,
  ) {

    return Container(
      margin:
          const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(22),

        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
                    0.03),
            blurRadius: 10,
          )
        ],
      ),

      child: Row(
        children: [

          Container(
            height: 90,
            width: 90,

            decoration: BoxDecoration(
              color:
                  color.withOpacity(0.1),
              borderRadius:
                  BorderRadius.circular(
                      18),
            ),

            child: Icon(
              Icons.motorcycle,
              color: color,
              size: 50,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  price,
                  style: TextStyle(
                    color:
                        Colors.orange.shade700,
                    fontSize: 24,
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Text(
            distance,
            style: const TextStyle(
              color: Colors.cyan,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget navItem(
    IconData icon,
    String title,
    bool active,
  ) {

    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center,

      children: [

        Icon(
          icon,
          color: active
              ? Colors.orange
              : Colors.grey,
        ),

        const SizedBox(height: 5),

        Text(
          title,
          style: TextStyle(
            color: active
                ? Colors.orange
                : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}