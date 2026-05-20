import "package:flutter/material.dart";

void main() {
  runApp(TelaHome());
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
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
                                  image: AssetImage("asset/image/bruxo_logo.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Loja Arcana",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 40, 0, 90),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Sua loja geek personalizada",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 31, 135, 253),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.auto_awesome,
                                      color: Color.fromARGB(255, 31, 135, 253),
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
              
                        Container(
                          width: 40,
                          height: 40,
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
                                  "Buscar camisetas, canecas, ecobags e mais...",
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
                          width: 50,
                          height: 50,
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
                          image: AssetImage("asset/image/banner.png"),
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
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.3),
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
                                "Itens geeks\nfeitos do seu jeito",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
              
                              SizedBox(height: 6),
              
                              Text(
                                "Personalize camisetas,\ncanecas e muito mais.",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
              
                              SizedBox(height: 15),
              
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.deepPurple,
              
                                  elevation: 4,
              
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
              
                                onPressed: () {},
              
                                child: Text("Explorar agora ->",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              
                    SizedBox(height: 35),
              
                    Row(
                      spacing: 5,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                      children: [
                        categorias(Icons.checkroom, "Camisas"),
                        categorias(Icons.coffee, "Canecas"),
                        categorias(Icons.shopping_bag, "Ecobags"),
                        categorias(Icons.mouse, "Mouses"),
                        categorias(Icons.draw, "Personalizados"),
                      ],
                    ),
                    SizedBox(height: 20),
              
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("destaques",
                      style: TextStyle(
                        color: Color.fromARGB(255, 40, 0, 90),
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),
                      TextButton(
                        onPressed: (){}, 
                        child: Text("Ver todos >",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 31, 135, 253),
                          ),)
                      ),
                    ],
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 12,
                    children: [
                      produtos("camisa hollow knight","R\$ 89,90","asset/image/camisa.png"),
                      produtos("Caneca gamer Link(zelda)","R\$ 59,90","asset/image/caneca.png"),
                      produtos("Ecobag Harry Potter Sonserina","R\$ 49,90","asset/image/ecobag.png")
                    ],
                   )
                  ],
                ),
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
              label: "Início",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: "Categorias",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favoritos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined),
              label: "Pedidos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Conta",
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
        
          width: 50,
          height: 55,

          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(22),

            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),

          child: Icon(icon, color: Color.fromARGB(255, 120, 9, 154), size: 30),
        ),
      ),

      SizedBox(height: 2),

      Text(texto, style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 120, 9, 154))),
    ],
  );
}
Widget produtos(
    String nome,
    String preco,
    String imagem,
  ) {

    return Container(
      width: 100,
      padding: EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),

        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(
            height: 80,

            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),

              image: DecorationImage(
                image: AssetImage(imagem),
                fit: BoxFit.contain,
              ),
            ),
          ),

          SizedBox(height: 3),

          Text(
            nome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),

          SizedBox(height: 3),

          Text(
            preco,
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
}
