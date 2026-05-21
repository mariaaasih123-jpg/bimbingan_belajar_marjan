import 'package:bimbingan_belajar_marjan/widget/detail_owner_widget_maria.dart';

import 'package:flutter/material.dart';

class DetailOwnerMaria extends StatelessWidget {
  const DetailOwnerMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 35),
        ),
        centerTitle: true,
        title: Text(
          "Detail Owner",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),

              Row(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/image/logo.jpeg'),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "owner",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "aurellia",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Informasi",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              DetailOwnerWidgetMaria(
                title: "Nama lengkap",
                subtitle: "Aurellia Bella S",
              ),
              SizedBox(height: 25),
              DetailOwnerWidgetMaria(
                title: "Email",
                subtitle: "aurelliabellas@gmail.com",
              ),
              SizedBox(height: 25),
              DetailOwnerWidgetMaria(
                title: "No.Telepon",
                subtitle: "0822-87648-97638",
              ),
              SizedBox(height: 25),
              DetailOwnerWidgetMaria(title: "Password", subtitle: "********"),
            ],
          ),
        ),
      ),
    );
  }
}
