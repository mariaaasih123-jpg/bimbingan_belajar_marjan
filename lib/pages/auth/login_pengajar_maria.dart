import 'package:bimbingan_belajar_marjan/pages/auth/register_pengajar_maria.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPengajarMaria extends StatefulWidget {
  const LoginPengajarMaria({super.key});

  @override
  State<LoginPengajarMaria> createState() => _LoginPengajarMariaState();
}

class _LoginPengajarMariaState extends State<LoginPengajarMaria> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;

  void isSecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isSecure = true;
        _icon = CupertinoIcons.eye_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.purple.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.white.withValues(alpha: 20),
                blurRadius: 5,
                spreadRadius: 5,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  " atur jadwal lesmu dengan lebih mudah",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/image/pengajar.webp', height: 150),
                ),
                Text(
                  " Login guru/pengajar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _username,
                  keyboardType: TextInputType.text,
                  obscureText: _isSecure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple.withValues(alpha: 0.7),
                    hintText: "Username",
                    labelText: "Isi Username kamu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.person, color: Colors.pinkAccent),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: _isSecure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple.withValues(alpha: 0.5),
                    hintText: "Password",
                    labelText: "88888",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.shield, color: Colors.pink),
                    suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(200, 1)),
                    backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_username.text == "Mariasih" &&
                          _password.text == "88888") {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("LOGIN SUKSES")),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("lOGIN GAGAL")),
                        );
                      }
                    });
                  },
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 20),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPengajarMaria(),
                        ),
                      ),
                      child: Text(
                        " Daftar?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
