import 'package:finalproject/Core/Cutom_Widget/Custom_textField.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  late TextEditingController _controller1 = TextEditingController();
  late TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(flex: 12),
          KPrimartText(fontSize: 40),
          Spacer(flex: 15),
          CustomTextField(
            controller: _controller1,
            text: "Email",
            icon: Icons.email,
            iconcolor: kPrimaryColor,
          ),
          Spacer(flex: 1),
          CustomTextField(
            controller: _controller2,
            obscureText: true,
            text: "Password",
            icon: Icons.key,
            iconcolor: kPrimaryColor,
          ),
          Spacer(
            flex: 1,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login" , style: TextStyle(color: kPrimaryColor),)),
          Spacer(flex: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("If you haven`t account please" ,style: TextStyle(fontSize: 12),),
              TextButton(onPressed: (){}, child: Text("Register" , style: TextStyle(color: kPrimaryColor),))
            ],
          ),
          Spacer(
            flex: 20,
          )
        ],
      ),
    );
  }
}
