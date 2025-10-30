import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';





class RestaurantsDetails {
  final int id;
  final String name;
  final bool isActive;
  final String dis;

  const RestaurantsDetails({
    required this.id,
    required this.name,
    required this.isActive,
    required this.dis,
  });


  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'isActive': isActive ? 1 : 0,
      'dis': dis,
    };
  }

  factory RestaurantsDetails.fromMap(Map<String, Object?> map) {
    return RestaurantsDetails(
      id: map['id'] as int,
      name: map['name'] as String,
      isActive: (map['isActive'] as int) == 1,
      dis: map['dis'] as String? ?? '',
    );
  }
}

late Database database;

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Ensure Flutter bindings are initialized before any platform calls.
  WidgetsFlutterBinding.ensureInitialized();

  // Open the database and store the reference in the top-level `database`.
  database = await openDatabase(
    // Use a safe filename and the join() helper to construct the path.
    join(await getDatabasesPath(), 'restaurants_details_database.db'),
    onCreate: (db, version) {
      // Include the `dis` column and keep isActive as INTEGER (0/1).
      return db.execute(
        'CREATE TABLE RestaurantsDetails(id INTEGER PRIMARY KEY, name TEXT, isActive INTEGER, dis TEXT)',
      );
    },
    version: 1,
  );

}

void printDbPath() async {
  final dbPath = await getDatabasesPath();
  final file = join(dbPath, 'restaurants_details_database.db');
  print('DB path: $file');
}

class Toters extends StatefulWidget {
   const Toters({super.key});

  @override
  State<Toters> createState() => _TotersState();
}

class _TotersState extends State<Toters> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 300,
        actions: [

        ],
        leading: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.pin_drop,color: Colors.green,),
              Text("Home",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),)
            ],
            
          ),
        ),
      ),
      body: Column(
        
        children: [
          Container(
            color: Colors.grey.shade400,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(12),
              child: TextField(
                decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
                hintText: 'Search restaurants, items or addresses',
                hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  VerticalDivider(width: 1, thickness: 1, color: Colors.grey.shade300),
                  
                  ],
                ),
                ),
              ),
              ),
            ),
          ),
          
          
Container(
  color: Colors.grey.shade400,
  height: 120,
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding:  EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      children: [
        // card 0
        InkWell(
          onTap: () => setState(() => _selectedIndex = 0),
          child: Container(
            height: 90,
            width: 120,
            margin:  EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedIndex == 0 ? Colors.blue : Colors.transparent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: _selectedIndex == 0 ? 10 : 6,
              color: Colors.grey.shade200,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
            ),
          ),
        ),

        // card 1
        InkWell(
          onTap: () => setState(() => _selectedIndex = 1),
          child: Container(
            height: 90,
            width: 120,
            margin:  EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedIndex == 1 ? Colors.blue : Colors.transparent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: _selectedIndex == 1 ? 10 : 6,
              color: Colors.grey.shade200,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
            ),
          ),
        ),

        // card 2
        InkWell(
          onTap: () => setState(() => _selectedIndex = 2),
          child: Container(
            height: 90,
            width: 120,
            margin:  EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedIndex == 2 ? Colors.blue : Colors.transparent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: _selectedIndex == 2 ? 10 : 6,
              color: Colors.grey.shade200,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
            ),
          ),
        ),

      ],
    ),
  ),
),
        
        Column(
          children: [
            for (int i = 0; i < 4 ; i++)
            
            Container(
              width: 400,
              height: 100,
              child: Visibility(
                visible:  _selectedIndex == 0 ,
                child: InkWell(
                  onTap: () {
                    print("hellow");
                  },
                  child: Card(
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    ),
                  ),
                ),
                ),
            )
          ],
        )
        ],
        
      ),
      
      
      
    );
  }
}


