import 'package:flutter/material.dart';

class profil_page extends StatelessWidget {
  const profil_page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arief Al Rasyid"),
        leading: Container(
          padding: const EdgeInsets.all(5),
          child: Image.asset('assets/arief.jpg'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildImage(),
                    SizedBox(height: 16),
                    _buildForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    BoxDecoration containerDecoration = BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(10.0),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: containerDecoration,
              child: Image.asset('assets/arief.jpg', width: 75, height: 75),
            ),
            SizedBox(width: 16), // Adjust the width for spacing between columns
            Container(
              decoration: containerDecoration,
              child: Image.asset('assets/arief.jpg', width: 75, height: 75),
            ),
          ],
        ),
        SizedBox(height: 16), // Adjust the height for spacing between rows
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: containerDecoration,
              child: Image.asset('assets/arief.jpg', width: 75, height: 75),
            ),
            SizedBox(width: 16), // Adjust the width for spacing between columns
            Container(
              decoration: containerDecoration,
              child: Image.asset('assets/arief.jpg', width: 75, height: 75),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Biodata',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Nama : Arief Al Rasyid',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'NPM : 9882405221111005',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Jurusan : IF5A Karyawan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Alamat : Cimahi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'No Telp : 081563937584',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
