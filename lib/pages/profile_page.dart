import 'package:ecommerce_app/pages/wishlist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whishlist',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person),
            ),
            title: const Text(
              'Person Name',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text(
              'Plus Member',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Text('3 Orderd'),
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(Size(100, 34)),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xffF5F5F5)),
                iconColor: const MaterialStatePropertyAll(Colors.black),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTile(
            leading: const Icon(
              CupertinoIcons.sun_max,
              size: 30,
            ),
            title: const Text(
              'Dark Mode',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: CupertinoSwitch(value: false, onChanged: (val) {}),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.info,
              size: 30,
            ),
            title: Text(
              'Account Information',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.padlock,
              size: 30,
            ),
            title: Text(
              'Password',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.bag,
              size: 30,
            ),
            title: Text(
              'Order',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => Wishlist(),
                ),
              );
            },
            leading: const Icon(
              CupertinoIcons.heart,
              size: 30,
            ),
            title: const Text(
              'Wishlist',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.gear,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.square_arrow_right,
              size: 30,
              color: Colors.red,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
