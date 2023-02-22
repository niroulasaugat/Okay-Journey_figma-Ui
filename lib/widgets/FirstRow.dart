 import 'package:flutter/material.dart';
 
 Widget MainRow(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
    
                  CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/The_President%2C_Shri_Ram_Nath_Kovind_meeting_the_President_of_Nepal%2C_Ms._Bidya_Devi_Bhandari%2C_in_Tokyo%2C_Japan_on_October_22%2C_2019_%28cropped%29.jpg/330px-The_President%2C_Shri_Ram_Nath_Kovind_meeting_the_President_of_Nepal%2C_Ms._Bidya_Devi_Bhandari%2C_in_Tokyo%2C_Japan_on_October_22%2C_2019_%28cropped%29.jpg'),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const  [
                    Text('Operator', 
                    style: TextStyle(color: Colors.grey, 
                    fontSize:12, ),),
                    SizedBox(height: 20,),
                    Text('Sita Nepali', 
                    style: TextStyle(color: Colors.black87, 
                    fontSize:22, fontWeight: FontWeight.bold ),)
    
                  ],
                ),
    
                ],),
                
    
                IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined, size: 30, color: Theme.of(context).primaryColor,))
    
              ],
            );
  }

  Widget Tablelist() {
    return Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Table List', style: TextStyle(fontSize: 12),),
              ],
            ),
          );
  }
