import 'package:data_from_api/page/home/widget/detail.dart';
import 'package:flutter/material.dart';


class DataCompany extends StatelessWidget {
  final Text name;
  final Text catchphrase;
  final Text bs;
  const DataCompany(
      {Key? key,
      required this.name,
      required this.catchphrase,
      required this.bs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Company"),
          ),
        ),
        Detail(
          leadingIcon: const Text("Name :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: name,
        ),
        Detail(
          leadingIcon: const Text("Catchphrase :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: catchphrase,
        ),
        Detail(
          leadingIcon: const Text("Bs :",
              style: TextStyle(
                color: Colors.white,
              )),
          prefixText: bs,
        ),
      ],
    );
  }
}
