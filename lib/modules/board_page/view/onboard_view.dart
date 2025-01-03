import 'package:cots_ppb/modules/board_page/view/home_view.dart';
import 'package:cots_ppb/modules/board_page/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Image.asset('assets/images/gojek_logo.png', height: 30,),
                  ),
                  Image.asset('assets/images/language.png', height: 30,),
                ],
              ),
              SizedBox(height: 24),

              // PageView
              Container(
                height: 200,
                child: PageView(
                  children: [
                    Image.asset('assets/images/onboard1.png',),
                    Image.asset('assets/images/onboard2.png',),
                    Image.asset('assets/images/onboard3.png',),
                  ],
                ),
              ),
              SizedBox(height: 24),

              Text(
                'Selamat datang di gojek!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),

              Text(
                'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(radius: 4, backgroundColor: index == 0 ? Colors.green : Colors.grey),
                )),
              ),
              SizedBox(height: 32),

              ElevatedButton(
                onPressed: () {

                  Get.to(HomeView());
                },
                child: Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 16),

             ElevatedButton(
  onPressed: () {
    Get.to(LoginView());
  },
  child: Text('Belum ada akun?, Daftar dulu'),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.green,
    padding: EdgeInsets.symmetric(vertical: 16),
    side: BorderSide(color: Colors.green), // Border hijau
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
),
SizedBox(height: 16),

              Spacer(),
              Text(
                'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
