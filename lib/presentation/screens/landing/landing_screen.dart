import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/helpers/get_api_cat_answers.dart';
import 'package:widgets_app/domain/entities/cat.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 1.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 1.0, 'label': 'Elevation 2'},
  {'elevation': 1.0, 'label': 'Elevation 3'},
  {'elevation': 1.0, 'label': 'Elevation 4'},
  {'elevation': 1.0, 'label': 'Elevation 5'},
  {'elevation': 1.0, 'label': 'Elevation 6'}
];

class LandingScreen extends StatelessWidget {
  static const String name = 'landing_screen';

  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
      ),
      body: const _LandingView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          //Lo devuelve a la pantalla anterior
          context.pop();
        },
      ),
    );
  }
}

class _LandingView extends StatelessWidget {
  const _LandingView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: colors.primary, width: 2),
        borderRadius: BorderRadius.circular(10));

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
                decoration: InputDecoration(
              hintText: 'Search cat by breed',
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                color: colors.primary,
                onPressed: () {},
              ),
              border: outlineInputBorder,
              focusedBorder: outlineInputBorder,
            )),
          ),
          //_CatListView.buildListView(GetApiCatAnswer().fetchCats())
          ...cards.map(
            (card) => _CardType1(elevation: card['elevation'], label: card['label']),
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 8),
          child: Column(children: [
            Row(
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Nombre raza'),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))                       ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('Ver más'),
                                Icon(Icons.more_vert_outlined),
                              ]
                            )
                          ),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://image.enjoymovie.net/FqJQCDI8SqB63r2ABIGIkcb5-c0=/256x256/smart/core/p/K1WB57OzN3.jpg'),
                ),
              ),
            ),
            const Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Pais de origen'),
                )),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Inteligencia'),
                )),
              ],
            )
          ]),
        ));
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(children: [
            Row(
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Nombre raza'),
                  ),
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: const Icon(Icons.more_horiz_outlined),
                          onPressed: () {})),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://image.enjoymovie.net/FqJQCDI8SqB63r2ABIGIkcb5-c0=/256x256/smart/core/p/K1WB57OzN3.jpg'),
                ),
              ),
            ),
            const Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Pais de origen'),
                )),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Inteligencia'),
                )),
              ],
            )
          ]),
        ));
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      child: Image(
          image: NetworkImage(
              'https://picsum.photos/id/${elevation.toInt()}/450/350'
          ),
          height: 330,
          fit: BoxFit.cover,
      ),
    );
  }
}
