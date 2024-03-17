import 'package:dio/dio.dart';
import 'package:dio_jsonserializable/http_service.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';

class ListUsersScreen extends StatefulWidget {
  const ListUsersScreen({super.key});

  @override
  State<ListUsersScreen> createState() => _ListUsersScreenState();
}

class _ListUsersScreenState extends State<ListUsersScreen> {
  bool isLoading=false;
  late HttpService http;
  late List<SingleUserResponse> UserResponse;
  late User user;
  Future getListUser() async {
    Response response;
    try {
      isLoading=true;
      response =await http.getRequest("/api/users?page=2");
      isLoading=false;

      if (response.statusCode==200){

      }else{

      }

    } on Exception catch (e) {
      // TODO
    }
  }




  @override
  void initState() {
    HttpService();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Get list  user"),
      ),
    );
  }
}
