import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Drawer test',
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Drawer Test"),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 1,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 165, 0),
                    Colors.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://static.poder360.com.br/2020/04/GATO-CORONAVIRUS-868x644.jpg")
                      )
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://static.poder360.com.br/2020/04/GATO-CORONAVIRUS-868x644.jpg"),
                )
              ],
            )
          ],
        ),
      ),
    )
  ));
}