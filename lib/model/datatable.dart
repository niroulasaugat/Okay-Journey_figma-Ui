import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp1());
// }
class MyApp1 extends StatefulWidget {
  @override
  _MyApp1State createState() => _MyApp1State();
}
class _MyApp1State extends State<MyApp1> {
  List<Map> _books = [
    {
      'S.n': 1,
       'Name': 'Sinamngal Tube Well',
      'Address': 'Sinamngal',
      'Working Status':{
        '0': 'Operating',
        '1':'Operating'
      }
    },
    {
      'S.n': 2,
      'Name': 'Sinamngal Tube Well',
      'Address': 'Sinamngal',
      'Working Status':{
        '0': 'Not Operating',
        '1':'Operating'
      }
      // 'author': 'David John'
    },
    {
      'S.n': 3,
       'Name': 'Sinamngal Tube Well',
       'Address': 'Kirtipur',
       'Working Status':{
        '0': 'Operating',
        '1':'Not Operating'
      }
      // 'author': 'Merlin Nick'
    },
    {
      'S.n': 4,
       'Name': 'Sinamngal Tube Well',
       'Address': 'Chabhail',
       'Working Status':{
        '0': 'Not Operating',
        '1':'Operating'
      }
      // 'author': 'Merlin Nick'
    }
  ];
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
@override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _createDataTable(),
              SizedBox(height: 10,),
              // _createDataTable()
             
             
            ],
          ),
        );
    
    
  }
DataTable _createDataTable() {
    return DataTable(
      
      columns: _createColumns(),
      rows: _createRows(),
      sortColumnIndex: _currentSortColumn,
      sortAscending: _isSortAsc,
    );
  }
List<DataColumn> _createColumns() {
    return [
      DataColumn(
      
        
        
        label: Text('S.n'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['S.n'].compareTo(a['S.n']));
            } else {
              _books.sort((a, b) => a['S.n'].compareTo(b['S.n']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(label: Text('Book')),
      DataColumn(label: Text('Address')),
      DataColumn(label: Text('Working Status'))
    ];
  }
List<DataRow> _createRows() {
    return _books
        .map((book) => DataRow(cells: [
              DataCell(
              
                Text(  book['S.n'].toString())),
              DataCell(Text(book['Name'])),
              DataCell(Text(book['Address'])),
              DataCell(
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)), 
                    color: book['Working Status']['0'] == 'Operating'?(Colors.green):Colors.red
                    ),
                  
                  padding: EdgeInsets.all(8),
                  child: Text(
                    
                    
                    book['Working Status']['0'],
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    
                    ) ,
                    
                    ))
              // DataCell(Text(book['Working Status']['0'])),
              
            ]))
        .toList();
  }
}