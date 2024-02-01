import 'package:covid/utils/config.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  final String deviceUDID;
  const ProfilPage({Key? key, required this.deviceUDID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Config.primaryColor,
        toolbarHeight: 70,
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Config.primaryColor, width: 2),
                    image: DecorationImage(
                      image: AssetImage('assets/Female-Avatar-2.png'), // Vérifiez le chemin de l'image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Nom: Noha Morsse',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Email: Noha@example.com',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'UDID: $deviceUDID',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
