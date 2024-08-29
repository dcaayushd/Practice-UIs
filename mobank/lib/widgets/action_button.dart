import 'package:flutter/material.dart';
import '../screens/transfer_money_screen.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 243, 245),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton(
              icon: Icons.account_balance,
              label: 'Deposit',
              onPressed: () {},
            ),
            ActionButton(
              icon: Icons.swap_horiz,
              label: 'Transfer',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransferMoneyScreen(),
                  ),
                );
              },
            ),
            ActionButton(
              imagePath: 'assets/nrs.png',
              label: 'Withdraw',
              onPressed: () {},
            ),
            ActionButton(
              icon: Icons.apps_sharp,
              label: 'More',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.icon,
    this.imagePath,
    required this.label,
    this.onPressed,
  }) : assert(icon != null || imagePath != null);

  final IconData? icon;
  final String? imagePath;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          IconButton.outlined(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: const Color.fromARGB(255, 16, 80, 98),
            ),
          )
        else if (imagePath != null)
          IconButton.outlined(
            onPressed: onPressed,
            icon: Image.asset(
              imagePath!,
              width: 24,
              height: 24,
              color: const Color.fromARGB(255, 16, 80, 98),
            ),
          ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
