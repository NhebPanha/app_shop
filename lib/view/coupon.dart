import 'package:flutter/material.dart';
import 'package:coupon_uikit/coupon_uikit.dart';

class Coupon extends StatefulWidget {
  const Coupon({super.key});

  @override
  State<Coupon> createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  bool isFront = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isFront = !isFront;
            });
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            transitionBuilder: (child, animation) {
              return RotationYTransition(
                turns: animation,
                child: child,
              );
            },
            child: isFront ? _buildFront() : _buildBack(),
          ),
        ),
      ),
    );
  }

  /// ================= FRONT =================
  Widget _buildFront() {
    return CouponCard(
      key: const ValueKey(1),
      height: 180,
      curvePosition: 150,
      borderRadius: 20,
      firstChild: Container(
        width: 130,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Color(0xffb31217)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.qr_code, color: Colors.white, size: 80),
            SizedBox(height: 10),
            Text(
              "Code:12345678",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      secondChild: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "20% OFF",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "USE NOW",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Your New User taxi voucher",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              "Used for : Food delivery",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              "Valid Till : 31 FEB 2026",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  /// ================= BACK =================
  Widget _buildBack() {
    return CouponCard(
      key: const ValueKey(2),
      height: 180,
      curvePosition: 150,
      borderRadius: 20,
      firstChild: Container(
        width: 250,
        padding: const EdgeInsets.all(20),
        color: Colors.grey.shade300,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Event: Valentine’s Day"),
            SizedBox(height: 5),
            Text("Discount: 20% off on Food Delivery"),
            SizedBox(height: 5),
            Text("MOV: \$3"),
            SizedBox(height: 5),
            Text("Condition: For new users (within 30 days)"),
            SizedBox(height: 5),
            Text("Limit Use: 1 per day"),
            SizedBox(height: 5),
            Text("Valid Period: Feb 10, 2026 – Feb 17, 2026"),
          ],
        ),
      ),
      secondChild: Container(
        width: 120,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Color(0xffb31217)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            "6",
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

/// Flip Animation
class RotationYTransition extends AnimatedWidget {
  final Widget child;
  const RotationYTransition({
    super.key,
    required Animation<double> turns,
    required this.child,
  }) : super(listenable: turns);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    final angle = animation.value * 3.1416;

    return Transform(
      transform: Matrix4.rotationY(angle),
      alignment: Alignment.center,
      child: child,
    );
  }
}