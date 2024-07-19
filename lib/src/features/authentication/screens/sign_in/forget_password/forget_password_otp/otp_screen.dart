import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingseventgermany/src/constants/sizes.dart';
import 'package:kingseventgermany/src/constants/text_strings.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(rDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(rOtpTitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),),
            Text(rOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 40.0,),
            const Text("$rOtpMessage test@icloud.com", textAlign: TextAlign.center,),
            const SizedBox(height: 40.0,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: false,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 40.0,),
            SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                    ), 
                    child: const Text(rNext)),
                ),
          ],
        ),
      ),      
    );
  }
}