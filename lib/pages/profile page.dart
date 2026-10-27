import 'package:flutter/material.dart';
import 'package:expense_tracker/pages/home page.dart';
import 'package:expense_tracker/pages/login page.dart';
import 'package:expense_tracker/pages/expense page.dart';
import 'package:expense_tracker/pages/income page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String name = "Paul Scholes";
  final String email = "forreal100@gmail.com";

  static const Color primaryColor = Color(0xFFE8735C);
  static const Color bgColor = Color(0xFFFDF3EF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

            
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 6),

              
              const Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              
              Center(
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: primaryColor.withOpacity(0.2),
                  backgroundImage: const AssetImage("assets/images/boy1.jpg"),
                ),
              ),

              const SizedBox(height: 30),

              
              _buildInfoRow(
                icon: Icons.person,
                label: "Name",
                value: name,
              ),
              const SizedBox(height: 16),

              
              _buildInfoRow(
                icon: Icons.email,
                label: "Email",
                value: email,
              ),
              const SizedBox(height: 16),

            
              _buildActionRow(
                icon: Icons.credit_card,
                label: "Add Expense",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Expense()),
                  );
                },
              ),
              const SizedBox(height: 16),

              
              _buildActionRow(
                icon: Icons.attach_money,
                label: "Add Income",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Income()),
                  );
                },
              ),
              const SizedBox(height: 16),

          
              _buildActionRow(
                icon: Icons.logout,
                label: "LogOut",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LogIn()),
                    (route) => false,
                  );
                },
              ),
              const SizedBox(height: 16),

             
              _buildActionRow(
                icon: Icons.delete_outline,
                label: "Delete Account",
                onTap: () {
                  
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 22),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionRow({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 22),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
