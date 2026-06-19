import 'package:flutter/material.dart';

class FeaturedBikesSection extends StatelessWidget {
  const FeaturedBikesSection({super.key});

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
                "Featured Bikes",
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

        /// BIKES LIST
        SizedBox(
          height: 320,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            children: [

              bikeCard(
                "assets/bike1.jpg",
                "Kawasaki Ninja ZX-10R",
                "2024 • Sport • 1000cc",
                "\$18,500",
              ),

              const SizedBox(width: 18),

              bikeCard(
                "assets/bike2.jpg",
                "Harley Sportster S",
                "2022 • Cruiser • 1252cc",
                "\$12,900",
              ),

              const SizedBox(width: 18),

              bikeCard(
                "assets/bike3.jpg",
                "Yamaha R1",
                "2023 • Sport • 998cc",
                "\$16,500",
              ),

              const SizedBox(width: 18),

              bikeCard(
                "assets/bike4.jpg",
                "Honda CBR600RR",
                "2021 • Sport • 599cc",
                "\$9,750",
              ),

              const SizedBox(width: 18),

              bikeCard(
                "assets/bike5.jpg",
                "BMW S1000RR",
                "2024 • Sport • 999cc",
                "\$21,000",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bikeCard(
    String image,
    String title,
    String subtitle,
    String price,
  ) {
    return Container(
      width: 240,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
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

          ClipRRect(
            borderRadius:
                BorderRadius.circular(16),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
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
              color: Colors.orange.shade700,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}