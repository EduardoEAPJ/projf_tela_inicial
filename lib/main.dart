import 'package:flutter/material.dart';

void main() {
  runApp(TelaCompra());
}

class TelaCompra extends StatelessWidget {
  const TelaCompra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('asset/image/bruxo_logo.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Loja Arcana',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 40, 0, 90),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Sua loja geek personalizada',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 31, 135, 253),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.auto_awesome,
                                    color: Color.fromARGB(255, 31, 135, 253),
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 10),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: Color.fromARGB(255, 120, 9, 154),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Buscar camisetas, canecas, ecobags e mais...',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 120, 9, 154),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 120, 9, 154),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 10),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.tune,
                            color: Color.fromARGB(255, 120, 9, 154),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0, 8),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/images/banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Itens geeks\nfeitos do seu jeito',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 12),

                            Text(
                              'Personalize camisetas,\ncanecas e muito mais.',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 25),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple,

                                elevation: 5,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),

                              onPressed: () {},

                              child: Text('Explorar'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 35),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      categorias(Icons.checkroom, 'Camisa'),
                      categorias(Icons.coffee, 'Caneca'),
                      categorias(Icons.shopping_bag, 'Ecobag'),
                      categorias(Icons.mouse, 'Mouse'),
                    ],
                  ),

                  //adicicar produtos aqui quando entender como fazer isso
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 120, 9, 154),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Conta',
            ),
          ],
        ),
      ),
    );
  }
}

Widget categorias(IconData icon, String texto) {
  return Column(
    children: [
      InkWell(
        borderRadius: BorderRadius.circular(22),

        onTap: () {},

        child: Container(
          width: 75,
          height: 75,

          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(22),

            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),

          child: Icon(icon, color: Color.fromARGB(255, 120, 9, 154), size: 35),
        ),
      ),

      SizedBox(height: 8),

      Text(texto, style: TextStyle(fontWeight: FontWeight.w500)),
    ],
  );
}
