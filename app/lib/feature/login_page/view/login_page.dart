import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wine_manager/core/route/app_pages.dart';
import 'package:wine_manager/feature/login_page/controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'WMS Login',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 48.0,
                      color: Colors.blue),
                ),

                SizedBox(height: 8),

                Text(
                  'Wine Management System',
                  style: TextStyle(

                      fontSize: 16.0,
                      color: Colors.grey),
                ),

                SizedBox(
                  height: 60,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: '아이디',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: '비밀번호',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('Forgotted Password!');
                      },
                      child: Text(
                        '비밀번호를 잃어버리셨습니까?',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(

                  ),
                  child: MaterialButton(
                    onPressed: () => Get.toNamed(AppRoutes.HOME),
                    color: Colors.blue,
                    child: Text(
                      '로그인',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.grey,
                  height: 30,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '''아직 계정이 없으십니까? ''',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 14.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('Sign Up');
                      },
                      child: Text('가입하기'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}