import 'package:data_from_api/network/dio.dart';
import 'package:data_from_api/network/response_list.dart';

import 'package:data_from_api/page/home/view/list_view.dart';
import 'package:data_from_api/page/model/todo_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AllData extends StatefulWidget {
  const AllData({Key? key}) : super(key: key);

  @override
  State<AllData> createState() => _AllDataState();
}

class _AllDataState extends State<AllData> {
  Future<ResponseList<TodoModel>?> getUser() async {
    Dio dio = await DioService.getTmsApiDio();

    Response<List<dynamic>> response = await dio.get<List<dynamic>>('/users');

    return ResponseList.fromJson(response.data ?? [], TodoModel.fromJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Data"),
        backgroundColor: Colors.grey[600],
      ),
      body: Container(
        child: FutureBuilder<ResponseList<TodoModel>?>(
          future: getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: snapshot.data?.dataList.length ?? 0,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 10,
                      child: ListTile(
                        title: Text(snapshot.data?.dataList[index].name ?? ""),
                        subtitle:
                            Text(snapshot.data?.dataList[index].username ?? ""),
                        trailing: Text(
                            snapshot.data?.dataList[index].address?.city ?? ""),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailListView(
                                    name: Text(snapshot.data?.dataList[index].name ??
                                        ""),
                                    username: Text(
                                        snapshot.data?.dataList[index].username ??
                                            ""),
                                    email: Text(
                                        snapshot.data?.dataList[index].email ??
                                            ""),
                                    addressStreet: Text(snapshot.data
                                            ?.dataList[index].address?.street ??
                                        ""),
                                    addressSuite: Text(snapshot.data
                                            ?.dataList[index].address?.suite ??
                                        ""),
                                    addressCity:
                                        Text(snapshot.data?.dataList[index].address?.city ?? ""),
                                    addressZipcode: Text(snapshot.data?.dataList[index].address?.zipcode ?? ""),
                                    phone: Text(snapshot.data?.dataList[index].phone ?? ""),
                                    website: Text(snapshot.data?.dataList[index].website ?? ""),
                                    companyName: Text(snapshot.data?.dataList[index].company?.name ?? ""),
                                    companyCatchPhrase: Text(snapshot.data?.dataList[index].company?.catchPhrase ?? ""),
                                    companyBs: Text(snapshot.data?.dataList[index].company?.bs ?? ""),
                                    geoLat: Text(snapshot.data?.dataList[index].address?.geo.lat ?? ""),
                                    geoLng: Text(snapshot.data?.dataList[index].address?.geo.lng ?? ""));
                              },
                            ),
                          );
                        },
                      ),
                    );
                  });
            } else {
              return const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
