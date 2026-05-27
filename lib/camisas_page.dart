import 'package:flutter/material.dart';

class CamisasPage extends StatelessWidget {
  const CamisasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),

                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 10),
                        ],
                      ),

                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 120, 9, 154),
                          size: 20,
                        ),
                      ),
                    ),

                    SizedBox(width: 15),

                    Container(
                      width: 70,
                      height: 70,

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
                          "Camisas Geek",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 40, 0, 90),
                          ),
                        ),

                        Row(
                          children: [
                            Text(
                              "Escolha sua favorita",
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

                SizedBox(height: 25),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Buscar camisas...",

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

                    SizedBox(width: 12),

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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "7 Camisas",

                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Row(
                            children: [
                              Text("Sort"),

                              SizedBox(width: 5),

                              Icon(Icons.swap_vert),
                            ],
                          ),
                        ),

                        SizedBox(width: 10),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Row(
                            children: [
                              Text("Filter"),

                              SizedBox(width: 5),

                              Icon(Icons.filter_alt_outlined),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 25),

                GridView.count(
                  crossAxisCount: 2,

                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,

                  childAspectRatio: 0.62,

                  physics: NeverScrollableScrollPhysics(),

                  shrinkWrap: true,

                  children: [
                    produtos(
                      "Camisa Hollow Knight",
                      "R\$ 89,90",
                      "asset/image/camisa.png",
                    ),

                    produtos("Camisa ", "R\$ 79,90", "asset/image/camisa2.png"),

                    produtos("Camisa ", "R\$ 99,90", "asset/image/camisa3.png"),

                    produtos("Camisa ", "R\$ 95,90", "asset/image/camisa4.png"),

                    produtos("Camisa ", "R\$ 89,90", "asset/image/camisa5.png"),

                    produtos("Camisa ", "R\$ 79,90", "asset/image/camisa6.png"),

                    produtos("Camisa ", "R\$ 89,90", "asset/image/camisa7.png"),
                  ],
                ),
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
    );
  }
}

Widget produtos(String nome, String preco, String imagem) {
  return Container(
    padding: EdgeInsets.all(10),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Expanded(
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(18),

              image: DecorationImage(
                image: AssetImage(imagem),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        SizedBox(height: 10),

        Text(
          nome,

          maxLines: 1,
          overflow: TextOverflow.ellipsis,

          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),

        SizedBox(height: 4),

        Text(
          "Produto geek premium",

          maxLines: 2,
          overflow: TextOverflow.ellipsis,

          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),

        SizedBox(height: 6),

        Text(
          preco,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}
