import 'package:flutter/material.dart';

class NearbyListingsSection extends StatelessWidget {
  const NearbyListingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// HEADER
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [

              const Text(
                "Nearby Listings",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                ),
              ),

              Text(
                "See All",
                style: TextStyle(
                  color: Colors.orange.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        nearbyCard(
          "assets/bike6.jpg",
          "Yamaha MT-07",
          "2023 • Naked • 689cc",
          "\$8,200",
          "0.8 km away",
        ),

        nearbyCard(
          "assets/bike7.jpg",
          "Honda CBR600RR",
          "2021 • Sport • 599cc",
          "\$9,750",
          "1.4 km away",
        ),

        nearbyCard(
          "assets/bike8.jpg",
          "BMW S1000RR",
          "2024 • Sport • 999cc",
          "\$21,000",
          "2.1 km away",
        ),

        nearbyCard(
          "assets/bike9.jpg",
          "Kawasaki Z900",
          "2023 • Naked • 948cc",
          "\$11,500",
          "3.0 km away",
        ),

        nearbyCard(
          "assets/bike2.jpg",
          "Harley Davidson",
          "2022 • Cruiser • 1252cc",
          "\$15,900",
          "4.5 km away",
        ),

        const SizedBox(height: 20),
      ],
    );
  }

  Widget nearbyCard(
    String image,
    String title,
    String subtitle,
    String price,
    String distance,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
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
                Colors.black.withOpacity(0.03),
            blurRadius: 10,
          ),
        ],
      ),

      child: Row(
        children: [

          ClipRRect(
            borderRadius:
                BorderRadius.circular(18),

            child: Image.asset(
              image,
              height: 90,
              width: 90,
              fit: BoxFit.cover,
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
                    fontSize: 22,
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
}