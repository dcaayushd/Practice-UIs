import 'package:app_store/app_theme.dart';
import 'package:flutter/cupertino.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: AppTheme.radius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/featured_app.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: AppTheme.padding,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: AppTheme.radius,
                  child: Image.asset(
                    'assets/app_icon.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('App Name', style: AppTheme.textMedium),
                      Text('Category', style: AppTheme.textSecondary),
                    ],
                  ),
                ),
                CupertinoButton(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  color: AppTheme.buttonColor,
                  borderRadius: BorderRadius.circular(20),
                  child: const Text('GET'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
