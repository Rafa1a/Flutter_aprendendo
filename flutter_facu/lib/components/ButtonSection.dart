import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Não foi possível lançar a URL, informe o usuário
      print('Could not launch $url');
    }
  }

  ElevatedButton _buildButtonColumn(
      Color color, IconData icon, String label, String url) {
    return ElevatedButton(
      onPressed: () {
        _launchURL(url);
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL', 'tel:+15555555555'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE', 'https://maps.google.com'),
        _buildButtonColumn(color, Icons.share, 'SHARE', 'https://example.com'),
      ],
    );
  }
}
