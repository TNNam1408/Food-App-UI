import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant.dart';
import 'package:food_delivery_app/pages/Home/components/bottom_bar.dart';
import 'package:food_delivery_app/pages/Home/components/enum.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Thông tin của tôi",
            style: TextStyle(
              color: kTextGrayColor,
            )),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      bottomNavigationBar: const CustomBottomBar(selectMenu: MenuState.profile),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/le.jpg",
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Nguyễn Đức Lê",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                ButtonCard(
                  press: () {},
                  title: 'Đơn đặt hàng của tôi',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Thẻ thanh toán của tôi',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Địa chỉ của tôi',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Mã quảng cáo của tôi',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Chia sẻ mã quảng cáo',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Câu hỏi thường gặp',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Đăng xuất',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kGrayColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 17.0),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
