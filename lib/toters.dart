import 'package:flutter/material.dart';





class Toters extends StatefulWidget {
   Toters({super.key});

  @override
  State<Toters> createState() => _TotersState();
}

class _TotersState extends State<Toters> {
  @override
int _selectedIndex = -1;
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
            child: SearchBar(),
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

SizedBox(height: 12),

Visibility(
  visible: _selectedIndex >= 0,
  child: Card(
    margin:  EdgeInsets.symmetric(horizontal: 12.0),
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding:  EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected: #${_selectedIndex + 1}',
            style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 8),
           Text('Short description for the selected item goes here.'),
           SizedBox(height: 12),
          Row(
            children: [
              ElevatedButton(onPressed: () { }, child:  Text('Action')),
               SizedBox(width: 8),
              OutlinedButton(
                onPressed: () => setState(() => _selectedIndex = -1),
                child:  Text('Close'),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
),
            
         SizedBox(height: 22),

        Visibility(
          visible: _selectedIndex >= 0,
          child: Card(
            margin:  EdgeInsets.symmetric(horizontal: 12.0),
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding:  EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selected: #${_selectedIndex + 1}',
                    style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 8),
                   Text('Short description for the selected item goes here.'),
                   SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        child: Image(image: NetworkImage("https://thumbs.dreamstime.com/b/unhealthy-fast-food-delivery-menu-featuring-assorted-burgers-cheeseburgers-nuggets-french-fries-soda-high-calorie-low-356045884.jpg"))),
                      ElevatedButton(onPressed: () { }, child:  Text('Action')),
                       SizedBox(width: 8),
                      OutlinedButton(
                        onPressed: () => setState(() => _selectedIndex = -1),
                        child:  Text('Close'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        
        ],
      ),
      
      
    );
  }
}