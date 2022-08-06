import 'package:flutter/material.dart';

class Debit extends StatefulWidget {
  const Debit({Key? key}) : super(key: key);

  @override
  State<Debit> createState() => _DebitState();
}

class _DebitState extends State<Debit> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var ascending = true;
  var sortColumnIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return ListView(
    // scrollDirection: Axis.vertical,
    // children: [
    print("sortColumnIndex: $sortColumnIndex");
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          border: TableBorder.symmetric(),
          sortAscending: ascending,
          sortColumnIndex: sortColumnIndex,
          columns: <DataColumn>[
            DataColumn(
              label: const Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              onSort: (columnIndex, ascending) {
                print("columnIndex:$columnIndex");
                print("ascending:$ascending");
                setState(() {
                  sortColumnIndex = columnIndex;
                });
              },
            ),
            DataColumn(
              label: const Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              onSort: (columnIndex, ascending) {
                print("columnIndex:$columnIndex");
                print("ascending:$ascending");
                setState(() {
                  sortColumnIndex = columnIndex;
                });
              },
            ),
            DataColumn(
              label: const Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              onSort: (columnIndex, ascending) {
                print("columnIndex:$columnIndex");
                print("ascending:$ascending");
                setState(() {
                  sortColumnIndex = columnIndex;
                });
              },
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('EndWilliam')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('EndWilliam')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('EndWilliam')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('EndWilliam')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('EndWilliam')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('EndsWilliam')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
