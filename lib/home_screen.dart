import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final products = [
    {'name': 'Cake', 'price': '\$2', 'image': 'https://sugargeekshow.com/wp-content/uploads/2023/10/easy_chocolate_cake_slice.jpg'},
    {'name': 'Zinger Burger', 'price': '\$10', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZuHTiGWB-2IMLv4VAejR5Ts6KZI59xcNmMQ&s'},
    {'name': 'Pizza', 'price': '\$15', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLFcEE6yUZtfkqkFl8yI8yr48j0oDovo1_Xw&s'},
    {'name': 'Fries', 'price': '\$1', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp58lL85rIlLQabGyF7EBtGU6tbByBV7sfXg&s'},
    {'name': 'Chocolate Frappe', 'price': '\$5', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUHirOE_W36Rmruor_97yG7fR9jRDU7j_syg&s'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text(
          'My Shop',
          style: TextStyle(color: Color(0xFFD4AF37),
          fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.shopping_cart, color: Color(0xFFD4AF37)),
          ),
        ],
      ),

      body: GridView.builder(

    padding: const EdgeInsets.all(10),

    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

    crossAxisCount: 2,
    childAspectRatio: 0.72,
    ),
       itemCount: products.length,
      itemBuilder: (_, i)=> ProductCard(products[i]),

    ),
                 bottomNavigationBar: BottomNavigationBar(
                 backgroundColor:Color(0xFF1E1E1E),
                   selectedItemColor: Color(0xFFD4AF37),
                  unselectedItemColor:Colors.grey,
                      items: [
                        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
                        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

                      ],
                 ),
    );
  }
}








class ProductCard extends StatelessWidget {
  final Map product;
  const ProductCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFD4AF37)),
      ),


      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.network(
              product['image'],
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),),


          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product['name'],
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),

                ),
                const SizedBox(height: 6),


                Text(product['price'],
                    style: const TextStyle(
                        color: Color(0xFFD4AF37),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),

                SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4AF37),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),),


                    child: const Text(
                      'BUY NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

