import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Add a TextEditingController for email
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        backgroundColor: const Color.fromARGB(255, 115, 160, 227),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama: Febri Rahayu Ningsih"),
              Text("Prodi: Informatika"),
              Text("NIM: 220111005"),
              SizedBox(height: 20), // Add some spacing

              // Menambah tombol klik
              ElevatedButton(
                onPressed: () {
                  // Aksi yang akan dijalankan ketika tombol di tekan
                },
                child: Text('Klik Saya'),
              ),
              SizedBox(height: 20), // Add some spacing

              // Menambahkan tanda tambah
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Aksi yang akan dijalankan ketika ikon ditekan
                },
              ),
              SizedBox(height: 20), // Add some spacing

              // Membuat Halaman Sign Up
              Center(
                child: Column(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text("Create your account"),
                    SizedBox(height: 20), // Add some spacing
                  ],
                ),
              ),

              // Menambahkan nama
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan Username Anda',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  // Aksi yang dijalankan ketika teks berubah
                },
              ),
              SizedBox(height: 20), // Add some spacing

              // Membuat email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukkan Email Anda',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  // Aksi yang dijalankan ketika teks berubah
                },
              ),
              SizedBox(height: 20), // Add some spacing

              // Membuat Password
              TextField(
                obscureText: true, // Hide password input
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan Password Anda',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  // Aksi yang dijalankan ketika teks berubah
                },
              ),
              SizedBox(height: 20), // Add some spacing

              // Membuat confirm pw
              TextField(
                obscureText: true, // Hide confirm password input
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Masukkan Confirm Password Anda',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  // Aksi yang dijalankan ketika teks berubah
                },
              ),
              SizedBox(height: 20), // Add some spacing

              // Tombol Sign Up
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Mengatur ukuran kolom agar hanya sesuai isinya
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman utama setelah sign up
                        Navigator.pushNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 71, 156, 226), // Ganti warna tombol
                      ),
                      child: Text('Sign Up'),
                    ),
                    SizedBox(height: 20), // Tambah jarak antar widget
                  ],
                ),
              ),

              // Text and Button for "Sign in with Google"
              Center(
                child: Column(
                  children: [
                    Text("or"),
                    SizedBox(height: 20), // Add some spacing

                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      label: Text('Sign in with Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 71, 156, 226), // Ganti warna tombol
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30), // Add some spacing

              // Already have an account text
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Aksi yang akan dijalankan ketika teks "Sign In" ditekan
                  },
                  child: Text(
                    "Already have an account? Login",
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          Colors.blue, // Blue text to indicate it's clickable
                      decoration:
                          TextDecoration.underline, // Underline the text
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: const Color.fromARGB(255, 115, 160, 227),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Create your account',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle Sign Up
                Navigator.pop(context);
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}