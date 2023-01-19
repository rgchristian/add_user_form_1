import 'package:add_user_form_1/models/user_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserList(),
      debugShowCheckedModeBanner: false,
      title: 'Mobile Programming',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    void showUserDialog() {
      showDialog(context: context, builder: (_){
        return AlertDialog(
          content: AddUserDialog(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },);
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDialog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView(),
      ),
    );
  }
}



