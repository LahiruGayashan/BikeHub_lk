import 'package:flutter/material.dart';
import '../../services/auth_service.dart';
import '../../services/firestore_service.dart';
import '../home/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() =>
      _AuthScreenState();
}

class _AuthScreenState
    extends State<AuthScreen> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  final phoneController =
      TextEditingController();

  final nameController =
      TextEditingController();
/// DISTRICT DROPDOWN
  String? selectedDistrict;

  final List<String> districts = [
    "Ampara",
    "Anuradhapura",
    "Badulla",
    "Batticaloa",
    "Colombo",
    "Galle",
    "Gampaha",
    "Hambantota",
    "Jaffna",
    "Kalutara",
    "Kandy",
    "Kegalle",
    "Kilinochchi",
    "Kurunegala",
    "Mannar",
    "Matale",
    "Matara",
    "Monaragala",
    "Mullaitivu",
    "Nuwara Eliya",
    "Polonnaruwa",
    "Puttalam",
    "Ratnapura",
    "Trincomalee",
    "Vavuniya",
  ];

  bool isLogin = true;
  bool isEmail = true;
  bool obscurePassword = true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF5F9FD),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.all(22),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                const SizedBox(height: 20),

                /// TOP BAR
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    Row(
                      children: [

                        Container(
                          height: 40,
                          width: 40,

                          decoration:
                              BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.circular(
                                    12),
                          ),

                          child: const Icon(
                            Icons.motorcycle,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(width: 10),

                        RichText(
                          text: const TextSpan(
                            children: [

                              TextSpan(
                                text: "MOTO",
                                style: TextStyle(
                                  color: Color(
                                      0xff1E293B),
                                  fontSize: 28,
                                  fontWeight:
                                      FontWeight.w300,
                                ),
                              ),

                              TextSpan(
                                text: "SELL",
                                style: TextStyle(
                                  color:
                                      Colors.orange,
                                  fontSize: 28,
                                  fontWeight:
                                      FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),

                      decoration:
                          BoxDecoration(
                        color:
                            Colors.cyan.shade50,
                        borderRadius:
                            BorderRadius.circular(
                                20),
                      ),

                      child: Row(
                        children: [

                          Container(
                            height: 8,
                            width: 8,

                            decoration:
                                const BoxDecoration(
                              color: Colors.cyan,
                              shape:
                                  BoxShape.circle,
                            ),
                          ),

                          const SizedBox(width: 6),

                          const Text(
                            "Secure",
                            style: TextStyle(
                              color: Colors.cyan,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                /// TITLE
                RichText(
                  text: const TextSpan(
                    children: [

                      TextSpan(
                        text: "Welcome ",
                        style: TextStyle(
                          color:
                              Color(0xff1E293B),
                          fontSize: 45,
                          fontWeight:
                              FontWeight.w300,
                        ),
                      ),

                      TextSpan(
                        text: "Back",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 45,
                          fontWeight:
                              FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Sign in to your account or create a new one",

                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 30),

                /// LOGIN REGISTER SWITCH
                Container(
                  padding:
                      const EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    color:
                        const Color(0xffEAF1F7),
                    borderRadius:
                        BorderRadius.circular(
                            20),
                  ),

                  child: Row(
                    children: [

                      Expanded(
                        child: switchButton(
                          title: "Sign In",
                          active: isLogin,

                          onTap: () {

                            setState(() {
                              isLogin = true;
                            });
                          },
                        ),
                      ),

                      Expanded(
                        child: switchButton(
                          title: "Register",
                          active: !isLogin,

                          onTap: () {

                            setState(() {
                              isLogin = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                /// LOGIN
                if (isLogin) ...[

                  Row(
                    children: [

                      authTypeButton(
                        icon: Icons.email,
                        title: "Email",
                        active: isEmail,

                        onTap: () {

                          setState(() {
                            isEmail = true;
                          });
                        },
                      ),

                      const SizedBox(width: 12),

                      authTypeButton(
                        icon: Icons.phone,
                        title: "Phone",
                        active: !isEmail,

                        onTap: () {

                          setState(() {
                            isEmail = false;
                          });
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  if (isEmail)
                    buildTextField(
                      controller:
                          emailController,
                      label:
                          "Email Address",
                      hint:
                          "your@email.com",
                      icon: Icons.email,
                    ),

                  if (!isEmail)
                    buildTextField(
                      controller:
                          phoneController,
                      label:
                          "Phone Number",
                      hint:
                          "(555) 000-0000",
                      icon: Icons.phone,
                    ),



                  const SizedBox(height: 20),

                  buildPasswordField(),

                  const SizedBox(height: 30),

                  GestureDetector(

                    onTap: () async {

                      final user =
                          await AuthService()
                              .loginUser(
                        email:
                            emailController
                                .text
                                .trim(),

                        password:
                            passwordController
                                .text
                                .trim(),
                      );

                      if (user != null) {

                        /// SUCCESS POPUP
                        ScaffoldMessenger.of(
                                context)
                            .showSnackBar(

                          const SnackBar(
                            content: Text(
                              "Login Successful ✅",
                            ),

                            backgroundColor:
                                Colors.green,
                          ),
                        );

                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (context) =>
                                const HomeScreen(),
                          ),
                        );

                      } else {

                        ScaffoldMessenger.of(
                                context)
                            .showSnackBar(

                          const SnackBar(
                            content: Text(
                              "Login Failed ❌",
                            ),

                            backgroundColor:
                                Colors.red,
                          ),
                        );
                      }
                    },

                    child: authButton(
                      "Sign In",
                      Icons.arrow_forward,
                    ),
                  ),
                ],

                /// REGISTER
                if (!isLogin) ...[

                  buildTextField(
                    controller:
                        nameController,
                    label: "Full Name",
                    hint: "John Rider",
                    icon: Icons.person,
                  ),

                  const SizedBox(height: 20),

                  buildTextField(
                    controller:
                        emailController,
                    label:
                        "Email Address",
                    hint:
                        "your@email.com",
                    icon: Icons.email,
                  ),

                  const SizedBox(height: 20),

                  buildTextField(
                    controller:
                        phoneController,
                    label:
                        "Phone Number",
                    hint:
                        "(555) 000-0000",
                    icon: Icons.phone,
                  ),

                  const SizedBox(height: 20),

                  
Column(
  crossAxisAlignment:
      CrossAxisAlignment.start,

  children: [

    const Text(
      "District",
      style: TextStyle(
        color: Colors.black54,
      ),
    ),

    const SizedBox(height: 10),

    Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 15,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),

      child: DropdownButtonFormField<String>(
        value: selectedDistrict,

        decoration:
            const InputDecoration(
          border: InputBorder.none,
        ),

        hint: const Text(
          "Select District",
        ),

        items: districts.map((district) {
          return DropdownMenuItem(
            value: district,
            child: Text(district),
          );
        }).toList(),

        onChanged: (value) {
          setState(() {
            selectedDistrict = value;
          });
        },
      ),
    ),
  ],
),


                  buildPasswordField(),

                  const SizedBox(height: 30),

                  GestureDetector(

                    onTap: () async {

                      final user =
                          await AuthService()
                              .registerUser(
                        email:
                            emailController
                                .text
                                .trim(),

                        password:
                            passwordController
                                .text
                                .trim(),
                      );

                      if (user != null) {

                        /// SAVE USER
                        
await FirestoreService()
    .saveUser(
  uid: user.uid,
  name: nameController.text.trim(),
  email: emailController.text.trim(),
  phone: phoneController.text.trim(),
  location: selectedDistrict ?? '',
);


                        /// SUCCESS POPUP
                        ScaffoldMessenger.of(
                                context)
                            .showSnackBar(

                          const SnackBar(
                            content: Text(
                              "Account Created Successfully ✅",
                            ),

                            backgroundColor:
                                Colors.green,
                          ),
                        );

                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (context) =>
                                const HomeScreen(),
                          ),
                        );

                      } else {

                        ScaffoldMessenger.of(
                                context)
                            .showSnackBar(

                          const SnackBar(
                            content: Text(
                              "Registration Failed ❌",
                            ),

                            backgroundColor:
                                Colors.red,
                          ),
                        );
                      }
                    },

                    child: authButton(
                      "Create Account",
                      Icons.motorcycle,
                    ),
                  ),
                ],

                const SizedBox(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget switchButton({
    required String title,
    required bool active,
    required VoidCallback onTap,
  }) {

    return GestureDetector(
      onTap: onTap,

      child: Container(
        padding:
            const EdgeInsets.symmetric(
          vertical: 15,
        ),

        decoration: BoxDecoration(
          color: active
              ? Colors.orange
              : Colors.transparent,

          borderRadius:
              BorderRadius.circular(16),
        ),

        child: Center(
          child: Text(
            title,

            style: TextStyle(
              color: active
                  ? Colors.white
                  : Colors.grey,

              fontWeight:
                  FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget authTypeButton({
    required IconData icon,
    required String title,
    required bool active,
    required VoidCallback onTap,
  }) {

    return GestureDetector(
      onTap: onTap,

      child: Container(
        padding:
            const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),

        decoration: BoxDecoration(
          color: active
              ? Colors.orange.shade50
              : Colors.white,

          borderRadius:
              BorderRadius.circular(14),

          border: Border.all(
            color: active
                ? Colors.orange
                : Colors.grey.shade300,
          ),
        ),

        child: Row(
          children: [

            Icon(
              icon,
              color: active
                  ? Colors.orange
                  : Colors.grey,
              size: 18,
            ),

            const SizedBox(width: 6),

            Text(
              title,
              style: TextStyle(
                color: active
                    ? Colors.orange
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController
        controller,
    required String label,
    required String hint,
    required IconData icon,
  }) {

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Text(
          label,
          style: const TextStyle(
            color: Colors.black54,
          ),
        ),

        const SizedBox(height: 10),

        Container(
          padding:
              const EdgeInsets.symmetric(
            horizontal: 15,
          ),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(18),

            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),

          child: TextField(
            controller: controller,

            decoration: InputDecoration(
              border: InputBorder.none,

              icon: Icon(
                icon,
                color: Colors.grey,
              ),

              hintText: hint,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPasswordField() {

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        const Text(
          "Password",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),

        const SizedBox(height: 10),

        Container(
          padding:
              const EdgeInsets.symmetric(
            horizontal: 15,
          ),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(18),

            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),

          child: TextField(
            controller:
                passwordController,

            obscureText:
                obscurePassword,

            decoration: InputDecoration(
              border: InputBorder.none,

              icon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),

              hintText:
                  "Enter your password",

              suffixIcon: IconButton(
                icon: Icon(
                  obscurePassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),

                onPressed: () {

                  setState(() {
                    obscurePassword =
                        !obscurePassword;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget authButton(
    String title,
    IconData icon,
  ) {

    return Container(
      width: double.infinity,
      height: 58,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange.shade400,
            Colors.orange.shade600,
          ],
        ),

        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          const SizedBox(width: 8),

          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}