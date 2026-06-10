import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../auth/auth_screen.dart';
import 'edit_profile_screen.dart';
import '../../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F9FD),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              /// TOP BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const [
                      Text(
                        "My Profile",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Manage your account",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      topButton(Icons.share),

                      const SizedBox(width: 10),

                      topButton(Icons.more_vert),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// PROFILE CARD
              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 10,
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orange.shade100,

                          child: const Icon(
                            Icons.person,
                            size: 45,
                            color: Colors.orange,
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              const Text(
                                "Gayashan",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.orange,
                                    size: 18,
                                  ),

                                  const SizedBox(width: 4),

                                  Text(
                                    "Sri Lanka",
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.green.shade50,

                                  borderRadius: BorderRadius.circular(20),
                                ),

                                child: Row(
                                  mainAxisSize: MainAxisSize.min,

                                  children: const [
                                    Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 16,
                                    ),

                                    SizedBox(width: 5),

                                    Text(
                                      "Verified",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    /// STATS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        statCard("12", "Listings"),

                        statCard("8", "Sold"),

                        statCard("4.9", "Rating"),

                        statCard("2.1k", "Views"),
                      ],
                    ),

                    const SizedBox(height: 25),

                    /// EDIT PROFILE BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 55,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),

                        onPressed: () {
                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder: (context) => const EditProfileScreen(),
                            ),
                          );
                        },

                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              /// MY LISTINGS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "My Listings",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    "View All",
                    style: TextStyle(color: Colors.orange.shade700),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 210,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [
                    listingCard("Ducati V4", "\$14,500", Colors.red),

                    const SizedBox(width: 15),

                    listingCard("BMW S1000RR", "\$21,000", Colors.blue),

                    const SizedBox(width: 15),

                    listingCard("Kawasaki ZX6R", "\$9,500", Colors.green),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              /// ACCOUNT
              const Text(
                "Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),

              const SizedBox(height: 20),

              accountTile(
                Icons.person,
                "Personal Details",
                "Name, email, phone",
              ),

              accountTile(
                Icons.verified_user,
                "Verification",
                "ID, seller verification",
              ),

              accountTile(
                Icons.credit_card,
                "Payment Methods",
                "Cards, bank, payments",
              ),

              accountTile(Icons.settings, "Settings", "Notifications, privacy"),

              const SizedBox(height: 20),

              /// LOGOUT BUTTON
              GestureDetector(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();

                  Navigator.pushAndRemoveUntil(
                    context,

                    MaterialPageRoute(builder: (context) => const AuthScreen()),

                    (route) => false,
                  );
                },

                child: Container(
                  width: double.infinity,
                  height: 65,

                  decoration: BoxDecoration(
                    color: Colors.red.shade50,

                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const Icon(Icons.logout, color: Colors.red),

                      const SizedBox(width: 10),

                      Text(
                        "Log Out",
                        style: TextStyle(
                          color: Colors.red.shade700,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      /// BOTTOM NAVIGATION
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 4),
    );
  }

  Widget topButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8),
        ],
      ),

      child: Icon(icon, color: Colors.black54),
    );
  }

  Widget statCard(String count, String title) {
    return Container(
      width: 70,

      padding: const EdgeInsets.symmetric(vertical: 15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.orange.shade700,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget listingCard(String title, String price, Color color) {
    return Container(
      width: 160,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),

        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: 100,

              decoration: BoxDecoration(
                color: color.withOpacity(0.12),

                borderRadius: BorderRadius.circular(18),
              ),

              child: Center(
                child: Icon(Icons.motorcycle, color: color, size: 55),
              ),
            ),

            const SizedBox(height: 15),

            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),

            const SizedBox(height: 8),

            Text(
              price,
              style: TextStyle(
                color: Colors.orange.shade700,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget accountTile(IconData icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),

        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 8),
        ],
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.orange.shade50,

            child: Icon(icon, color: Colors.orange),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 4),

                Text(subtitle, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        ],
      ),
    );
  }
}
