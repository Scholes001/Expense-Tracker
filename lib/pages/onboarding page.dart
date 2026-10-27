import 'package:expense_tracker/pages/signup%20page.dart';
import 'package:expense_tracker/services/support_widget.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8edc2),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 90),
            SizedBox(
              height: 300,
      
              child: Image.asset(
                "assets/images/onboard.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    Text(
                      "Manage your daily\nlife expenses",
                      textAlign: TextAlign.center,
                      style: AppWidget.headlineTextStyle(30),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Text(
                        "Expense Tracker is a simple and efficient personal finance management app that allows you to track your daily expenses and income.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(160, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ), // Padding
                    const SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Material(
                          elevation: 3.0,
                          borderRadius: BorderRadius.circular(60),
                          child: Container(
                            
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffee6856),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), // Container
                  ],
                ), // Column
              ),
            ), // Expanded
          ],
        ),
      ),
    );
  }
}