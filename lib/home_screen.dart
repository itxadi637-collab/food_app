import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final products = [
    {'name': 'Wireless Earbuds', 'price': '\$25', 'image': 'https://lastlook.pk/wp-content/uploads/2022/10/M10-TWS-Bluetooth-Earbuds-1.jpg'},
    {'name': 'Smart Watch', 'price': '\$20', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzL8F7cEFIAHFkF20iaHCZ76hj3Mnp3meogw&s'},
    {'name': 'Phone Case', 'price': '\$10', 'image': 'https://img.drz.lazcdn.com/static/pk/p/15db255bdf53189f0003a89c6cf14f5d.jpg_720x720q80.jpg'},
    {'name': 'Power Bank', 'price': '\$30', 'image': 'https://img.drz.lazcdn.com/static/pk/p/1d9171a9e000d74ab31e71850b04c31e.jpg_720x720q80.jpg'},
    {'name': 'Necklace', 'price': '\$5', 'image': 'https://i.etsystatic.com/54132661/r/il/027700/6957247553/il_1080xN.6957247553_gxz0.jpg'},
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

