import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.06),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pageTitle(),
                    _bookaridewidget(),
                    _ridebutton(),
                  ],
                ),
                _astroImageWidget(),
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 80,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: 1500.0,
      width: 1500.0,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/astro.png"),
        ),
      ),
    );
  }

  Widget _bookaridewidget() {
    return Container(
        height: _deviceHeight * 0.25,
        margin: EdgeInsets.only(top: _deviceHeight * 0.45),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _destinationDropDownWidget(),
                _travellersInformationWidget(),
              ],
            ),
          ],
        ));
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownButtonClass(values: const [
      'James Web Station',
      'Preneure Station',
    ], width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: const ['1', '2', '3', '4', '8+'],
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownButtonClass(
          values: const [
            'Economy',
            'Business',
            'First',
            'Premium',
          ],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _ridebutton() {
    return Container(
        margin: EdgeInsets.only(bottom: _deviceHeight * 0.05),
        width: _deviceWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: MaterialButton(
            onPressed: () {},
            child: const Text(
              "Book a Ride!",
              style: TextStyle(color: Colors.black),
            )));
  }
}
