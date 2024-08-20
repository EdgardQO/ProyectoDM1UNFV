import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TECH STORE FIEI',
      theme: ThemeData(
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TECH STORE FIEI'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                'assets/LOGO2.jpeg',
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.red,
                child: const Text(
                  '¡Bienvenido a TECH STORE FIEI!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.filter_list, color: Colors.white, size: 30),
                    const SizedBox(width: 10),
                    Container(
                      width: 150,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Inicio'),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 120),
                    Icon(Icons.shopping_cart, color: Colors.white, size: 30),
                    const SizedBox(width: 10),
                    Icon(Icons.search, color: Colors.white, size: 30),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(
                    imageUrl: 'https://home.ripley.com.pe/Attachment/WOP_5/2004314434498/2004314434498_2.jpg',
                    name: 'Victus Gaming Laptop 15-fa1098la',
                    buttonText: 'Comprar',
                    description1: 'Procesador= Intel® Core™ i5-12450H (hasta 4,4 GHz con tecnología Intel® Turbo Boost, 12 MB de caché L3, 8 núcleos y 12 subprocesos)',
                    description2: 'Memoria= 16 GB de RAM DDR4-3200 MHz (2 x 8 GB)',
                    description3: 'Almacenamiento= SSD PCIe® NVMe™ de 1 TB',
                    description4: 'Tarjeta Gráfica= GPU NVIDIA® GeForce RTX™ 4050 para laptop (GDDR6 de 6 GB dedicada)',
                    description5: 'Duración de la Batería= Hasta 10 horas y 30 minutos',
                    description6: 'Sistema Operativo= Windows 11 Home Single Language',
                  ),
                  const SizedBox(width: 30),
                  ProductCard(
                    imageUrl: 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/883085764_1/w=1500,h=1500,fit=pad',
                    name: 'Lenovo Ideapad',
                    buttonText: 'Comprar',
                    description1: 'Lenovo Ideapad description...',
                    description2: '',
                    description3: '',
                    description4: '',
                    description5: '',
                    description6: '',
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(
                    imageUrl: 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/883096370_1/w=1500,h=1500,fit=pad',
                    name: 'ASUS TUF gaming A15',
                    buttonText: 'Comprar',
                    description1: 'ASUS TUF gaming A15 description...',
                    description2: '',
                    description3: '',
                    description4: '',
                    description5: '',
                    description6: '',
                  ),
                  const SizedBox(width: 30),
                  ProductCard(
                    imageUrl: 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/882958599_1/w=1500,h=1500,fit=pad',
                    name: 'Gamert Intel Core I5',
                    buttonText: 'Comprar',
                    description1: 'Gamert Intel Core I5 description...',
                    description2: '',
                    description3: '',
                    description4: '',
                    description5: '',
                    description6: '',
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(
                    imageUrl: 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/883163884_1/w=1500,h=1500,fit=pad',
                    name: 'Laptop ASUS Intel Core I9',
                    buttonText: 'Comprar',
                    description1: 'Laptop ASUS Intel Core I9 description...',
                    description2: '',
                    description3: '',
                    description4: '',
                    description5: '',
                    description6: '',
                  ),
                  const SizedBox(width: 30),
                  ProductCard(
                    imageUrl: 'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/883024543_1/w=1500,h=1500,fit=pad',
                    name: 'Laptop Aspire 3 Intel',
                    buttonText: 'Comprar',
                    description1: 'Laptop Aspire 3 Intel description...',
                    description2: '',
                    description3: '',
                    description4: '',
                    description5: '',
                    description6: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String buttonText;
  final String description1;
  final String description2;
  final String description3;
  final String description4;
  final String description5;
  final String description6;

  const ProductCard({
    required this.imageUrl,
    required this.name,
    required this.buttonText,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
    required this.description6,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: 150,
          height: 50,
          alignment: Alignment.center,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Container(
          width: 150,
          height: 110,
          child: Image.network(
            imageUrl,
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          color: Colors.red,
          width: 150,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    imageUrl: imageUrl,
                    title: name,
                    description1: description1,
                    description2: description2,
                    description3: description3,
                    description4: description4,
                    description5: description5,
                    description6: description6,
                  ),
                ),
              );
            },
            child: Text(buttonText),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
class ProductDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description1;
  final String description2;
  final String description3;
  final String description4;
  final String description5;
  final String description6;

  const ProductDetailScreen({
    required this.imageUrl,
    required this.title,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
    required this.description6,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(description1),
            Text(description2),
            Text(description3),
            Text(description4),
            Text(description5),
            Text(description6),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PurchaseFormScreen(
                            title: title,
                          ),
                        ),
                      );
                    },
                    child: const Text('Comprar'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const Text('Volver al Inicio'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class PurchaseFormScreen extends StatelessWidget {
  final String title;

  const PurchaseFormScreen({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
        title: Text('Formulario de Compra'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Compra del producto: $title',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nombre Completo',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Dirección de Envío',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Teléfono',
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Mostrar mensaje de compra realizada
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Compra realizada'),
                    ),
                  );

                  // Redirigir a la pantalla de inicio después de un retraso
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  });
                },
                child: const Text('Realizar Compra'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
