// import 'dart:convert';

import 'package:app_sobat/api/repository/gor_api_repository.dart';
import 'package:app_sobat/models/gor_model.dart';
// import 'package:app_sobat/models/gor_model.dart';
// import 'package:dio/dio.dart';
// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
// import 'package:pagination/pagination.dart';

class GorBeranda extends StatefulWidget {
  GorBeranda({Key key}) : super(key: key);

  @override
  _GorBerandaState createState() => _GorBerandaState();
}

class _GorBerandaState extends State<GorBeranda> {
  ApiRepositoryGor _apiRepository = ApiRepositoryGor();

  @override
  void initState() {
    // _apiRepository.getDataGorApi;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: new Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFF)),
          child: new Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: new Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Gor",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                Expanded(
                  child: FutureBuilder(
                      future: _apiRepository.getDataGorApi,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<GorModel>> snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                            break;
                          case ConnectionState.waiting:
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                            break;
                          case ConnectionState.active:
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                            break;
                          case ConnectionState.done:
                            if (snapshot.hasError) {
                              return Container(
                                child: Text("Something Error!"),
                              );
                            } else {
                              return BuildList(
                                listData: snapshot.data,
                              );
                            }
                            break;
                        }
                        return Container();
                      }),
                ),
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Add"),
                  icon: Icon(Icons.add),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildList extends StatelessWidget {
  const BuildList({
    Key key,
    this.listData,
  }) : super(key: key);

  final List<GorModel> listData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listData[index].namaGor),
              subtitle: Text(listData[index].alamatGor),
            );
          }),
    );
  }
}
