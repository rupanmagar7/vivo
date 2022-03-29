import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child:const Text("Login"))
        ],
      ),
    );
  }
}
