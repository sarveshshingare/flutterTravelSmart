import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class  AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
const AppIconText({ Key? key ,required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child:  Row(
              children: [
                 Icon(
                  icon,
                  color: Color(0xffbfc2df),
                ),
                Gap(10),
                Text(text),
              ],
            ),
          );
  }
}