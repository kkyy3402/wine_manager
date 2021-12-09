import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_manager/common/widget/TitleText.dart';

class StorageRegisterPage extends StatefulWidget {
  const StorageRegisterPage({Key? key}) : super(key: key);

  @override
  _StorageRegisterPageState createState() => _StorageRegisterPageState();
}

class _StorageRegisterPageState extends State<StorageRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [


              Text(
                "☺️  등록신청 페이지",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),

              SizedBox(height: 60),

              Container(
                margin: EdgeInsets.only(left: 16),
                width: Get.width,
                child: Text(
                  "창고명",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 12),

              TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '창고명을 입력해주세요',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),

                ),
              ),

              SizedBox(height: 30),

              Container(
                margin: EdgeInsets.only(left: 16),
                width: Get.width,
                child: Text(
                  "보관 음료 타입",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 12),

              TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '창고명을 입력해주세요',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),

                ),
              ),

              SizedBox(height: 30),

              Container(
                margin: EdgeInsets.only(left: 16),
                width: Get.width,
                child: Text(
                  "운영자명",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 12),

              TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '창고명을 입력해주세요',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),

                ),
              ),

              SizedBox(height: 30),

              Container(
                margin: EdgeInsets.only(left: 16),
                width: Get.width,
                child: Text(
                  "비고",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 12),

              TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '창고명을 입력해주세요',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),

                ),
              ),



              Expanded(child: Container()),

              Container(
                width: Get.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),

                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )
                        )
                    ),
                    child: Text(
                      "등록 신청하기",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    onPressed: (){
                      Get.back();
                      Get.snackbar("알림", "등록 신청이 완료되었습니다.");
                    }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
