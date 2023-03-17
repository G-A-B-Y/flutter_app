import 'package:flutter/material.dart';
import 'package:login_screen/constants/colors.dart';
import 'package:login_screen/constants/sizes.dart';
import 'package:login_screen/features/authentication/screens/login/login_screen.dart';

import '../../../../constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body : SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            Text(tSignupTitle, style: Theme.of(context).textTheme.headline1,), 
            Text(tSignupSubTitle, style : Theme.of(context).textTheme.bodyText1),
          
            Form(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      TextFormField(
                        decoration: const  InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_rounded,),
                        labelText : tFullName,
                    //    labelStyle: TextStyle(color: tWhiteColor),
                        hintText : tFullName,
                        border: OutlineInputBorder()
                        ),
                      ), 
                         const SizedBox(height : tFormHeight -20),

                       TextFormField(
                        decoration: const  InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,),
                        labelText : tEmail,
                        ),
                       ),

                           const SizedBox(height : tFormHeight -20),
                          TextFormField(
                        decoration: const  InputDecoration(
                        prefixIcon: Icon(Icons.numbers,),
                        labelText : tPhoneNo,
                        ),
                       ),

                        const SizedBox(height : tFormHeight -20),
                       TextFormField(
                        decoration: const  InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint,),
                        labelText : tpassword,
                        ),
                       ),

                       
                        const SizedBox(height : tFormHeight -20),
                        SizedBox(
                          width: double.infinity,
                        child: ElevatedButton(onPressed: (){},
                        child: const Text(tSignUp),
                        ),
                        ),
                  
        ]),
      ),
      
    ),
        ]),
      ),
    ),
      );
  }
}