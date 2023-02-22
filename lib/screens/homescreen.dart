import 'package:flutter/material.dart';
import '../model/datatable.dart';
import '../widgets/FirstRow.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 15),
              child: MainRow(context),
            ),
            SizedBox(height: 15,),
            Tablelist(),
            Container(
              height: MediaQuery.of(context).size.height* 0.63,
              width: double.infinity,
              // decoration: BoxDecoration(color: Colors.red),
              // color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    NewCard(),
                    NewCard()
                // Card(
                // margin: EdgeInsets.all(10),
                
                // shape: RoundedRectangleBorder(side: BorderSide.none),
                // // color: Colors.black,
                // child: MyApp1()
                // )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  
                  width: 120,
                  margin: EdgeInsets.only(right: 20, top: 10),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30)),
                  child: Text('Explore Here',
                  textAlign: TextAlign.center,
                   style: TextStyle(color: Colors.white),),
                )
              ],
            )
            // Card(
            //   margin: EdgeInsets.all(10),
              
            //   shape: RoundedRectangleBorder(side: BorderSide.none),
            //   // color: Colors.black,
            //   child: MyApp1()
            //   ),
            //   Card(
            //   margin: EdgeInsets.all(10),
              
            //   shape: RoundedRectangleBorder(side: BorderSide.none),
            //   // color: Colors.black,
            //   child: MyApp1()
            //   )
            // // TableData()
      
          ],
        ),
      ),
    );
  }

  Widget NewCard() {
    return Card(
                    elevation: 2,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              
              shape: RoundedRectangleBorder(side: BorderSide.none),
              // color: Colors.black,
              child: MyApp1()
              );
  }

  

 
}

// Widget _buildDataTable(){
//   final columns = ['S.n', 'Name', 'Address', 'Working Status'];
//   return DataTable(columns: , rows: rows)
// }