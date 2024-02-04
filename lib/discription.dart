import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Text("byuhub  gyugyghji;o guyftydtfh uiugyufytfljh iugyftr56riuioj  vtrtt8yihkhhvh u8yr7t9uiohyg gyr6r7yiuiugghu y87t67rttiouiohjhjh yurtyriuujh ytryuhjhjb yytkjkjjkl b tuyiohhh ygyutyhjj ",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.7),
        ),
        textAlign: TextAlign.justify,),
        SizedBox(height: 20,),
        Row(
          children: [
             Text("Course Length", style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,

            ),
            ),
            SizedBox(width: 5,),
            // Spacer(),
            Icon(Icons.timer,color: Color.fromARGB(255, 180, 113, 214),),
            Text("26 Hours", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ),)
          ],
        ),
         Row(
          children: [
             Text("Rating:", style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,

            ),
            ),
            SizedBox(height: 10,),
            // Spacer(),
            Icon(Icons.star,color: Color.fromARGB(255, 201, 219, 37),),
            Text("4.5", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              
            ),)
          ],
        )
      ],
    ),
    );
  }
}