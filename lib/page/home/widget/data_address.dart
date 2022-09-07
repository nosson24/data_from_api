import 'package:data_from_api/page/home/widget/detail.dart';
import 'package:flutter/material.dart';

class DataAddress extends StatelessWidget {
  final Text addressStreet;
  final Text addressSuite;
  final Text addressCity;
  final Text addressZipcode;
  final Text geoLat;
  final Text geoLng;

  const DataAddress({
    Key? key,
    required this.addressStreet,
    required this.addressSuite,
    required this.addressCity,
    required this.addressZipcode,
    required this.geoLat,
    required this.geoLng,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Address"),
            ),
          ),
        ),
        Detail(
          leadingIcon: const Text("Street :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: addressStreet,
        ),
        Detail(
          leadingIcon: const Text("Suite :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: addressSuite,
        ),
        Detail(
          leadingIcon: const Text("City :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: addressCity,
        ),
        Detail(
          leadingIcon: const Text("Zipcod :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: addressZipcode,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("GEO"),
          ),
        ),
        Detail(
          leadingIcon: const Text("geolat :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: geoLat,
        ),
        Detail(
          leadingIcon: const Text("geolng :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: geoLng,
        ),
      ],
    );
  }
}
