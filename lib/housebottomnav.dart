import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:joso_app/Tutorrequest.dart';
import 'package:joso_app/houserequest.dart';
import 'package:joso_app/request.dart';
import 'package:joso_app/apply.dart';
import 'package:joso_app/tutorapply.dart';

import 'apply.dart';
import 'houseapply.dart';

class Housebottomnav extends StatefulWidget {
  const Housebottomnav({super.key});

  @override
  State<Housebottomnav> createState() => _HousebottomnavState();
}

class _HousebottomnavState extends State<Housebottomnav> {
  int _selectedIndex = 0;
  final _screens1 = [
   HousekapplyScreen(),
    HouseOfferScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens1[_selectedIndex],
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          onTap: _ontapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Offer'),
            BottomNavigationBarItem(
                icon: Icon(Icons.handshake), label: 'Apply'),
          ]),
    );
  }

  void _ontapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
