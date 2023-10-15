import 'package:flutter/material.dart';
import 'package:msgapp/gen/assets_gen.dart';
import 'package:msgapp/helpers/size_helper.dart';
import 'package:msgapp/model/user_model.dart';
import 'package:msgapp/viewmodel/user_model.dart';
import 'package:provider/provider.dart';

class HomePage2 extends StatelessWidget {
  
  final MyUser user;

  HomePage2({Key? key,   required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.backgroundimage.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 37, 37, 37).withOpacity(0.95),
              ),
              height: context.height * 1,
              width: context.width * 1,
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    left: 50,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 170, 169, 169),
                        fontSize: 52,
                        fontFamily: "Pacifico",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 280,
                    child: Text(
                      " ${user.userID}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "italic",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                  child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: Color.fromARGB(255, 41, 38, 38),
                    width: 4.0),),
                  child: TextButton(
                    onPressed: () => _cikisYap(context),
                  child: const Text("Çıkış Yap"),),),),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Container(
                constraints: BoxConstraints.expand(
                  height: context.height * 0.6,
                  width: context.width * 1,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.backgroundills.path),
                    fit: BoxFit.fitHeight,
                    opacity: 0.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 57,
            child: Container(
              width: 6,
              height: context.height * 0.8,
              color: const Color.fromARGB(255, 170, 169, 169),
            ),
          ),
          Positioned(
            top: 595,
            left: 57,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 170, 169, 169),
              ),
              width: context.width * 0.858,
              height: 6,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                height: context.height * 0.08,
                width: context.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Hadi Sohbete Başlayalım", style: TextStyle(fontSize: 15)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 40, 39, 39),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> _cikisYap(BuildContext context) async {
    final _userModel = Provider.of<UserModel>(context, listen: false);
    bool? sonuc = await _userModel.signOut();
    return sonuc;
  }
}
