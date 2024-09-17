import 'package:flutter/material.dart';

void main() {
  runApp(Secundario());
}

class Secundario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Prime Video',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prime Video',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.screen_share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Carrusel de Películas Destacadas
          Container(
            height: 250,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/59eccc7fbd939ac2ad5dd11b534bd6a4f926f62321b0e698405806cf3b7dba0e.jpg',
                    'Ver Ahora'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/7b974989403b3e96d3d527694469566a9fc1c1fce871f568821e6e19d2b5f9da.jpg',
                    'Ver Ahora'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/d7dbf184ff601ee1c1f2789c0150d306b22d8e686592b39ce23f06340be2e793.jpg',
                    'Alquilar'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/41d25472dcf2b149965f04d8d028a6e27503da31ad32969cd06891f8075354ac.png',
                    'Ver Ahora'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/e95fd1668a92ad6c659f51937df33b8c715042c6d51890fa2555b1591b67c420.jpg',
                    'Ver Ahora'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/2b897d465fbf36dc1538262fcb8414831cda94da46ec0be9b64ed26b5874a673.jpg',
                    'Ver Ahora'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/f4240028a875355cda5cb4dfb0e06651d5fd85f550de51bb7d38b988e0362ff5.jpg',
                    'Ver Ahora'),
              ],
            ),
          ),
          // Lista de Categorías
          _buildCategorySection('Popular Ahora >', [
            'https://m.media-amazon.com/images/S/pv-target-images/93605d6f3b14b7c6addfd28ffde1a4db2f7d320cf601a84a1d98c4d314f9de77.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/5e5de81fbae0c4af4c1b4c095cb0e747da8eaebdba0d578eb5d5c7d9554b185f.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/3315eabc9f211baadcd2d017aac0d7006c3c1f60eb2c525e5f57ed770297ea77.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/20d5708d15616c1cacb57351d47118756a5abd3037583b62b8ebe44525ae54d9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/869a8420fe4cdd1fc934785827a06ac63d6e1c55f650d13e0a4128e4e35bd4d9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/0eafbde79dcbf0288119aea3b66b99c8be502b7491d3905f5f0c397d9dd42078.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/816d00964967b1025a586f5c4ed5ab0a599b3ca6a0b840262199e5d5d48586b2.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/aec3dff3faa8fab44ec9c24e40a1ccb6e8da6ecd851ce9013ebcc1113b14ebb8.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/b531ef0b58a651c0f4fd4c76b98a508f47ccce3334b30ecb658c274974be1cd8.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/030f9ae65cadc9afc0e3c51ed35d2ddeb814f213d7a87fc5aa4445738ebb32b9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/e2d4cde382e03184a167758bee2b540457dc57ba95e3992c2411ab561971274e.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/6d3d1461d50778271845ce7ec81ba2c5d76a20f7f84e5061cd099aabaedc77f9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/4e56947c6028f65c760c0d866bc45981b3b8f19b03bcec8a9ef5fdd1ca21f439.png',
            'https://m.media-amazon.com/images/S/pv-target-images/69291c0cdb985adf98620a8d7b431bc220ab7d5b8982eb446546589baa5dcc71.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/8f2576cf91814fe87143f7d1247a51c2ffa8006fd2a93a12a45d829f98009a5d.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/4c679453e9d7510e1843c2c257ace1bda841123caf5252499deee33401e18b31.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/56abf9c1c6c12a64f912c01347dbd9c82ca298d374a70f4b4006e89435343d51.jpg',
          ]),
          _buildCategorySection('Series    Ver más >', [
            'https://i0.wp.com/www.cdfgaming.com/wp-content/uploads/2024/05/image-7.png?fit=635%2C786&ssl=1',
            'https://m.supergeek.cl/noticias/site/artic/20220225/imag/foto_0000000220220225162322/TGD_S5_4x5-960x1200pxl.jpg',
            'https://images.justwatch.com/poster/265495408/s332/la-ley-del-corazon',
            'https://images.cdn2.buscalibre.com/fit-in/360x360/3d/83/3d83aa6caae4a3728d29c0546b2247cb.jpg',
            'https://m.media-amazon.com/images/I/71-OmF5HTKL._AC_UF1000,1000_QL80_.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/31794929327be3e53bd342f4a13acbb7b75de9154722e81b745c61ed7efd3aa7.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/82e45d7635642331da8536b3934511d48643adb38a79be0d91b6db0c0bdd2f27.png',
            'https://images.justwatch.com/poster/304464934/s166/season-1',
            'https://m.media-amazon.com/images/S/pv-target-images/d552fc316c9b6ed5216dd7de15603c1ab563c1b7e49ff78ec8d8811fc0a501b9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/f3215983f67d9e36adf2c93afd643b3988f6ff3e57e6fd0dc17a16b4bdf7c717.png',
            'https://m.media-amazon.com/images/S/pv-target-images/cff10568665795a92cb0e800eb76c96a7f9685a93bcfc9093eb2c6292feec904.jpg',
            'https://media.press.amazonmgmstudios.com/userfiles/images/image-20240306230142-1.jpeg',
            'https://m.media-amazon.com/images/S/pv-target-images/6e9d3d1ea4e704224549c32abcecdf7b18dfabcc27a67cdc29fdb290a0c7bd16.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/e1678c05d132239808a048387f15a62e768cc2f74bab239f27ee48da1f04506f.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/b03a8468580b30c76e611046040a0202469c426a22ec80344c4a9945d0ca240b.png',
            'https://media.press.amazonmgmstudios.com/userfiles/images/MLJN_S1_PRKeyart_CollageVertical_404x608_PRE_PV_FINAL_en-US_KAPS(1).png',
            'https://m.media-amazon.com/images/S/pv-target-images/9881b4534f4cb289bd0c87422a56e525f2d65ca2c46c5b751cf18025aa52951b.png',
          ]),
          Container(
            height: 250,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/ce1cfafeb2ed3bfe581d284a34521796ebe23b10283346d275e18fe1f5a59dfd.jpg',
                    'Top 1 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/59001cca2123f3e17be35da8217f355fa79710d80514038c61d13c00c5f5d701.jpg',
                    'Top 2 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/a7d8cb0c993f7f5684426fa8918e7bf3943e1faab76a0bb493b12dc82e3d384f.jpg',
                    'Top 3 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/7006f2ac2166d13578223f18dd4a9f5467f18d5f3fff79383e32deb46062f8c4.jpg',
                    'Top 4 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/e0db849fe46ca699ecd193e809454e866edebc9761f9278d8a10f425aff6b477.jpg',
                    'Top 5 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/e4e83aeb87b61970d8fe38fb28709e80c130bdda6c37f2e4b651c47629904af3.jpg',
                    'Top 6 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/c147c63f76b908d7e92eb116229a0e2858012bf9288f0dc4bc82e397ea6a069b.jpg',
                    'Top 7 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/2b897d465fbf36dc1538262fcb8414831cda94da46ec0be9b64ed26b5874a673.jpg',
                    'Top 8 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/7b974989403b3e96d3d527694469566a9fc1c1fce871f568821e6e19d2b5f9da.jpg',
                    'Top 9 Colombia'),
                _buildMovieItem(
                    'https://m.media-amazon.com/images/S/pv-target-images/825d2b8dc5598f3be2bd68f19a089702a4535e81dd9ed67962c514278e651193.png',
                    'Top 10 Colombia'),
              ],
            ),
          ),
          _buildCategorySection('Mi lista ➕', [
            'https://i0.wp.com/www.cdfgaming.com/wp-content/uploads/2024/05/image-7.png?fit=635%2C786&ssl=1',
            'https://m.supergeek.cl/noticias/site/artic/20220225/imag/foto_0000000220220225162322/TGD_S5_4x5-960x1200pxl.jpg',
            'https://images.justwatch.com/poster/265495408/s332/la-ley-del-corazon',
            'https://images.cdn2.buscalibre.com/fit-in/360x360/3d/83/3d83aa6caae4a3728d29c0546b2247cb.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/869a8420fe4cdd1fc934785827a06ac63d6e1c55f650d13e0a4128e4e35bd4d9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/0eafbde79dcbf0288119aea3b66b99c8be502b7491d3905f5f0c397d9dd42078.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/816d00964967b1025a586f5c4ed5ab0a599b3ca6a0b840262199e5d5d48586b2.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/aec3dff3faa8fab44ec9c24e40a1ccb6e8da6ecd851ce9013ebcc1113b14ebb8.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/b531ef0b58a651c0f4fd4c76b98a508f47ccce3334b30ecb658c274974be1cd8.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/030f9ae65cadc9afc0e3c51ed35d2ddeb814f213d7a87fc5aa4445738ebb32b9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/e2d4cde382e03184a167758bee2b540457dc57ba95e3992c2411ab561971274e.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/6d3d1461d50778271845ce7ec81ba2c5d76a20f7f84e5061cd099aabaedc77f9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/6e9d3d1ea4e704224549c32abcecdf7b18dfabcc27a67cdc29fdb290a0c7bd16.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/e1678c05d132239808a048387f15a62e768cc2f74bab239f27ee48da1f04506f.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/b03a8468580b30c76e611046040a0202469c426a22ec80344c4a9945d0ca240b.png',
            'https://media.press.amazonmgmstudios.com/userfiles/images/MLJN_S1_PRKeyart_CollageVertical_404x608_PRE_PV_FINAL_en-US_KAPS(1).png',
            'https://m.media-amazon.com/images/S/pv-target-images/9881b4534f4cb289bd0c87422a56e525f2d65ca2c46c5b751cf18025aa52951b.png',
          ]),
          _buildCategorySection('Seguir viendo ', [
            'https://m.media-amazon.com/images/S/pv-target-images/869a8420fe4cdd1fc934785827a06ac63d6e1c55f650d13e0a4128e4e35bd4d9.jpg',
            'https://media.press.amazonmgmstudios.com/userfiles/images/image-20240306230142-1.jpeg',
            'https://m.media-amazon.com/images/S/pv-target-images/6d3d1461d50778271845ce7ec81ba2c5d76a20f7f84e5061cd099aabaedc77f9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/816d00964967b1025a586f5c4ed5ab0a599b3ca6a0b840262199e5d5d48586b2.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/030f9ae65cadc9afc0e3c51ed35d2ddeb814f213d7a87fc5aa4445738ebb32b9.jpg',
            'https://m.media-amazon.com/images/S/pv-target-images/e2d4cde382e03184a167758bee2b540457dc57ba95e3992c2411ab561971274e.jpg',
          ]),
        ],
      ),
    );
  }

  Widget _buildMovieItem(String imageUrl, String title) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String title, List<String> movieUrls) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(
                    movieUrls[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
/* Widget _buildCategorySection(String title, List<String> movieUrls) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieUrls.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Redirige a la pantalla InceptionScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MovieDescriptionScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network(
                      movieUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  } */
