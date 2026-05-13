import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_pengajar_maria.dart';

class RegisterPengajarMaria extends StatefulWidget {
  const RegisterPengajarMaria({super.key});

  @override
  State<RegisterPengajarMaria> createState() => _RegisterPengajarMariaState();
}
//wekuu
class _RegisterPengajarMariaState extends State<RegisterPengajarMaria> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _pwkedua = TextEditingController();

  bool _isSecure = true;
  IconData _icon = CupertinoIcons.eye_fill;

  void isSecure() {
    setState(() {
      _isSecure = !_isSecure;
      _icon = _isSecure ? CupertinoIcons.eye_fill : CupertinoIcons.eye_slash;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.purple.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.purple.withValues(alpha: 0.5),
                blurRadius: 5,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                    'assets/image/pengajar.webp'
                    , height: 150
                ),
              ),
              SizedBox(height: 20),
              Text(
                "DAFTAR ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.black45,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.7),
                  hintText: "your email",
                  labelText: "Isi email kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _password,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.5),
                  hintText: "Password",
                  labelText: "Masukan password kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    onPressed: isSecure,
                    icon: Icon(_icon),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _pwkedua,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.5),
                  hintText: "Konfirmasi Password",
                  labelText: "Konfir password kamu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    onPressed: isSecure,
                    icon: Icon(_icon),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun?",
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
                      " Masuk?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(140, 40)),
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPengajarMaria(),
                      ),
                    ),
                    child: Text("Batal", style: TextStyle(color: Colors.black)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(140, 40)),
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {
                      if (_pwkedua.text == _password.text &&
                          _password.text.isNotEmpty &&
                          _email.text.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("DAFTAR BERHASIL")),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("DAFTAR GAGAL")),
                        );
                      }
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
