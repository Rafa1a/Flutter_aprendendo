import 'package:flutter/material.dart';

class ButtonSection  extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);
  ElevatedButton _buildButtonColumn(Color color, IconData icon, String label) {
  return ElevatedButton(
    onPressed: () {
      // Adicione a ação do botão aqui
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
    // ...

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    return buttonSection;
  }
}
 