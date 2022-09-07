import 'package:data_from_api/page/home/widget/data_address.dart';
import 'package:data_from_api/page/home/widget/data_company.dart';
import 'package:data_from_api/page/home/widget/detail.dart';
import 'package:flutter/material.dart';

class DetailListView extends StatelessWidget {
  final Text name;
  final Text username;
  final Text email;
  final Text addressStreet;
  final Text addressSuite;
  final Text addressCity;
  final Text addressZipcode;
  final Text phone;
  final Text website;
  final Text companyName;
  final Text companyCatchPhrase;
  final Text companyBs;
  final Text geoLat;
  final Text geoLng;

  const DetailListView({
    Key? key,
    required this.name,
    required this.username,
    required this.email,
    required this.addressStreet,
    required this.addressSuite,
    required this.addressCity,
    required this.addressZipcode,
    required this.phone,
    required this.website,
    required this.companyName,
    required this.companyCatchPhrase,
    required this.companyBs,
    required this.geoLat,
    required this.geoLng,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: name,
        backgroundColor: Colors.grey[600],
      ),
      body: Container(
        color: Colors.grey[50],
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Detail(
                          leadingIcon: const Icon(Icons.person_pin_rounded),
                          prefixText: username,
                        ),
                        Detail(
                          leadingIcon: const Icon(Icons.email),
                          prefixText: email,
                        ),
                        Detail(
                          leadingIcon: const Icon(Icons.phone_iphone_rounded),
                          prefixText: phone,
                        ),
                        Detail(
                          leadingIcon:
                              const Icon(Icons.alternate_email_rounded),
                          prefixText: website,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.725,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Color.fromARGB(255, 255, 91, 42),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        DataAddress(
                          addressStreet: addressStreet,
                          addressSuite: addressSuite,
                          addressCity: addressCity,
                          addressZipcode: addressZipcode,
                          geoLat: geoLat,
                          geoLng: geoLng,
                        ),
                        DataCompany(
                          name: companyName,
                          catchphrase: companyCatchPhrase,
                          bs: companyBs,
                        )
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     width: double.infinity,
                //     height: 50,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         color: Colors.amber),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class AddressDetailModel {
//   final String street;
//   final String suite;
//   final String city;
//   final String zipcode;
//   GeoDetailModel geo;
//   AddressDetailModel(
//     this.street,
//     this.suite,
//     this.city,
//     this.zipcode,
//     this.geo,
//   );
// }

// class GeoDetailModel {
//   final String? lat;
//   final String? lag;
//   GeoDetailModel(
//     this.lat,
//     this.lag,
//   );
// }
