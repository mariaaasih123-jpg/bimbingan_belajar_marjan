import 'package:flutter/material.dart';

class TambahJadwal extends StatefulWidget {
  const TambahJadwal({super.key});

  @override
  State<TambahJadwal> createState() => _TambahJadwalState();
}

class _TambahJadwalState extends State<TambahJadwal> {
  final _mapel = TextEditingController();
  final TextEditingController _pengajar = TextEditingController();
  final TextEditingController _hari = TextEditingController();
  final TextEditingController _jammulai = TextEditingController();
  final TextEditingController _jamselesai = TextEditingController();
  final TextEditingController _catatan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "TAMBAH JADWAL",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: _mapel,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                label: Text("MATA PELAJARAN"),
                hintText: "Masukan mata pelajaran",
                icon: Icon(Icons.book),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _pengajar,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                label: Text("Pengajar"),
                hintText: "Nama Pengajar",
                icon: Icon(Icons.people_alt),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _hari,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                label: Text("Hari"),
                hintText: "Pilih hari",
                icon: Icon(Icons.calendar_month),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _jammulai,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                label: Text("Jam mulai"),
                hintText: "Jam mulai",
                icon: Icon(Icons.timer_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _jamselesai,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                label: Text("Jam selesai"),
                hintText: "Jam selesai",
                icon: Icon(Icons.timer),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _catatan,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                label: Text("Catatan"),
                hintText: "opsinonal",
                icon: Icon(Icons.note),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(0),
                  ),
                ),
                fixedSize: WidgetStatePropertyAll(Size(200, 1)),
                backgroundColor: WidgetStatePropertyAll(Colors.purpleAccent),
              ),
              onPressed: () {
                if (_pengajar.text.isNotEmpty &&
                    _jamselesai.text.isNotEmpty &&
                    _jamselesai.text.isNotEmpty &&
                    _hari.text.isNotEmpty &&
                    _mapel.text.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(title: Text("DSIMPAN")),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(title: Text("TIDAK DAPAT DISIMPAN")),
                  );
                }
              },
              child: Text(
                "SIMPAN",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
