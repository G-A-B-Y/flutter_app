// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_screen/constants/image_strings.dart';
import 'package:login_screen/constants/sizes.dart';

import '../../../../constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    body : SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            Text(tLoginTitle, style: Theme.of(context).textTheme.headline1,), 
            Text(tLoginSubTitle, style : Theme.of(context).textTheme.bodyText1),
          
            Form(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      TextFormField(
                        decoration: const  InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText : tEmail,
                        hintText : tEmail,
                        border: OutlineInputBorder()
                        ),
                      ), 
                          SizedBox( height: tFormHeight -20,),
                         TextFormField(
                           decoration: const  InputDecoration(
                           prefixIcon: Icon(Icons.fingerprint),
                           labelText : tpassword,
                           hintText : tpassword,
                           border: OutlineInputBorder(),
                           suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp))
                        ),
                      ), 
                      const SizedBox(height: tFormHeight -20,),
                      SizedBox(
                        width: double.infinity,
                      child:
                      ElevatedButton(onPressed:(){}, 
                      child: Text(tLogin.toUpperCase()),)),
                      
                      const SizedBox(height: tFormHeight -20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("OR"),
                          SizedBox(
                            width: double.infinity,
                            child: 
                           OutlinedButton.icon(
                            icon: Image(image: AssetImage(tLoginScreenLogo),),
                            onPressed: (){}, 
                            label: Text(tSignInWithGoogle))),

                            const SizedBox(
                              height: tFormHeight-20,
                            ),

                            TextButton(onPressed: (){},
                             child: Text.rich(
                              TextSpan(
                                text: tDontHaveAnAccount,
                                style : Theme.of(context).textTheme.bodyText1,
                                children : const[
                                  TextSpan(
                                    text: tSignUp,
                                    style: TextStyle(color:Colors.blue),
                                  ),
                                ]),
                              ),
                            ),        
                        ],
                      )
                    ],
                  ),
               ),
             ),
           ]
        ),
      ),
    ),
  );
          
  }
}