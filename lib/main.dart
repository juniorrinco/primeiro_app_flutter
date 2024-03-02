import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // ignore: use_super_parameters
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child: const Text(
                  'Cidades de Rondônia',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset(
                'assets/images/jipa.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Brasil',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Ji-Paraná, Rondônia',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '3.053',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.phone),
                        onPressed: () {
                          // Ação para ligar
                        },
                      ),
                      const Text('Ligar'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.location_on),
                        onPressed: () {
                          // Ação para endereço
                        },
                      ),
                      const Text('Endereço'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {
                          // Ação para compartilhar
                        },
                      ),
                      const Text('Compartilhar'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131.026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 226º mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              'Powered by: Osmar',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
