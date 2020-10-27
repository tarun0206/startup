import 'package:e_shop/Authentication/authenication.dart';
import 'package:e_shop/Config/config.dart';
import 'package:e_shop/Address/addAddress.dart';
import 'package:e_shop/Store/Search.dart';
import 'package:e_shop/Store/cart.dart';
import 'package:e_shop/Orders/myOrders.dart';
import 'package:e_shop/Store/storehome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            accountEmail: Text(
              EcommerceApp.sharedPreferences.getString(EcommerceApp.userEmail),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            accountName: Text(
              EcommerceApp.sharedPreferences.getString(EcommerceApp.userName),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: NetworkImage(EcommerceApp.sharedPreferences
                    .getString(EcommerceApp.userAvatarUrl)),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 6.3,
          ),
          Container(
            padding: EdgeInsets.only(top: 1.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    "Home",
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (c) => StoreHome());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 240.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag,
                  ),
                  title: Text(
                    "My Orders",
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (c) => MyOrders());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 240.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                  ),
                  title: Text(
                    "My Cart",
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (c) => CartPage());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: .8,
                    width: 240.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.search,
                  ),
                  title: Text(
                    "Search",
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (c) => SearchProduct());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.3,
                    width: 240.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home_work,
                  ),
                  title: Text(
                    "Add New Address",
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (c) => AddAddress());
                    Navigator.pushReplacement(context, route);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 240.0,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text(
                    "Logout",
                  ),
                  onTap: () {
                    EcommerceApp.auth.signOut().then((c) {
                      Route route =
                          MaterialPageRoute(builder: (c) => AuthenticScreen());
                      Navigator.pushReplacement(context, route);
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
