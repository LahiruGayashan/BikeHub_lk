import 'package:flutter/material.dart';

import '../../widgets/bottom_nav_bar.dart';

import '../profile/profile_screen.dart';
import '../../widgets/featured_bikes_section.dart';
import '../../widgets/nearby_listings_section.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,

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
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    /// APP BAR
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        /// LOGO
                        Row(
                          children: [

                            Container(
                              height: 45,
                              width: 45,

                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius:
                                    BorderRadius.circular(14),
                              ),

                              child: const Icon(
                                Icons.motorcycle,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(width: 12),

                            const Text(
                              "MOTOSELL",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff1E293B),
                              ),
                            ),
                          ],
                        ),

                        /// PROFILE ICON
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
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                Colors.orange.shade100,

                            child: const Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                          ),
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
                              color: Color(0xff1E293B),
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                            ),
                          ),

                          TextSpan(
                            text: "Perfect Ride",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    /// SEARCH BAR
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(22),
                      ),

                      child: Row(
                        children: [

                          const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search bikes...",
                                hintStyle: TextStyle(
                                  color:
                                      Colors.grey.shade500,
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

              /// FEATURED BIKES
              const FeaturedBikesSection(),

              const SizedBox(height: 30),

              /// NEARBY LISTINGS
              const NearbyListingsSection(),

              const SizedBox(height: 120),
            ],
          ),
        ),
      ),

      /// BOTTOM NAVIGATION
     bottomNavigationBar:
    const CustomBottomNavBar(
      currentIndex: 0,
    ),
      
    );
  }

  Widget navItem(
    IconData icon,
    String title,
    bool active,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

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