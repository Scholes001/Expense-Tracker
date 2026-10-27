
import 'package:expense_tracker/pages/profile page.dart';
import 'package:expense_tracker/services/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMonthSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: const Color.fromARGB(149, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Paul Scholes",
                        style: AppWidget.headlineTextStyle(20),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile() ));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(60),
                      child: Image.asset(
                        "assets/images/boy1.jpg",
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Manage your\nexpenses",
                style: AppWidget.headlineTextStyle(28),
              ),
              SizedBox(height: 15.0),

              
              Container(
                padding: EdgeInsets.only(
                  top: 18,
                  left: 20,
                  right: 20,
                  bottom: 18,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(48, 0, 0, 0),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Expenses",
                          style: AppWidget.headlineTextStyle(20),
                        ),
                        Text(
                          "\$300",
                          style: TextStyle(
                            color: Color(0xffee6856),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "1 Sep 2026 - 30 Sep 2026",
                      style: TextStyle(
                        color: const Color.fromARGB(149, 0, 0, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        SizedBox(
                          height: 130,
                          width: 130,
                          child: CustomPaint(
                            painter: DonutChartPainter(),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            legendItem(
                              color: Color(0xffee6856),
                              title: "Shopping",
                              amount: "\$500",
                            ),
                            SizedBox(height: 12),
                            legendItem(
                              color: Color(0xff8bc34a),
                              title: "Grocery",
                              amount: "\$300",
                            ),
                            SizedBox(height: 12),
                            legendItem(
                              color: Color(0xff26a69a),
                              title: "Others",
                              amount: "\$200",
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMonthSelected = true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isMonthSelected
                              ? Color(0xffee6856)
                              : Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(48, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "This Month",
                          style: TextStyle(
                            color:
                                isMonthSelected ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMonthSelected = false;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: !isMonthSelected
                              ? Color(0xffee6856)
                              : Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(48, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "This Year",
                          style: TextStyle(
                            color:
                                !isMonthSelected ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(48, 0, 0, 0),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Income",
                            style: AppWidget.headlineTextStyle(17),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "+\$5000",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              value: 1.0,
                              minHeight: 6,
                              backgroundColor:
                                  const Color.fromARGB(40, 0, 0, 0),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(48, 0, 0, 0),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expenses",
                            style: AppWidget.headlineTextStyle(17),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "+\$5000",
                            style: TextStyle(
                              color: Color(0xffee6856),
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              value: 1.0,
                              minHeight: 6,
                              backgroundColor:
                                  const Color.fromARGB(40, 0, 0, 0),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xffee6856),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                decoration: BoxDecoration(
                  color: Color(0xfff3a08e),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/images/like.png",
                        height: 24,
                        width: 24,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        "Your expense plan looks good",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget legendItem({
    required Color color,
    required String title,
    required String amount,
  }) {
    return Row(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
            Text(
              amount,
              style: TextStyle(
                color: const Color.fromARGB(149, 0, 0, 0),
                fontSize: 13,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class DonutChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double strokeWidth = 24;
    final Rect rect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );

    final List<Map<String, dynamic>> data = [
      {"color": Color(0xffee6856), "percent": 0.50}, 
      {"color": Color(0xff8bc34a), "percent": 0.30}, 
      {"color": Color(0xff26a69a), "percent": 0.20}, 
    ];

    double startAngle = -90 * (3.1415926535 / 180);

    for (var item in data) {
      final paint = Paint()
        ..color = item["color"]
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.butt;

      final sweepAngle = 2 * 3.1415926535 * item["percent"];
      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}