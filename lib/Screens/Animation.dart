import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animi extends StatefulWidget {
  const Animi({super.key});

  @override
  State<Animi> createState() => _AnimiState();
}

class _AnimiState extends State<Animi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animations')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Animateddd(),
                      ));
                },
                child: const Text('Image_Animation')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Animation2()));
                },
                child: const Text('List_Animation')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tween(),
                      ));
                },
                child: const Text('Tween_Animation')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ripple(),
                      ));
                },
                child: const Text('Ripple_Animation')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Animateddd extends StatefulWidget {
  const Animateddd({super.key});

  @override
  State<Animateddd> createState() => _AnimatedStateddd();
}

class _AnimatedStateddd extends State<Animateddd> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image_Animation'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.black),
            ),
          ),
          AnimatedCrossFade(
              firstChild: Image.network(
                  'https://tse3.mm.bing.net/th?id=OIP.jwk2-lnqQyRzbbwBWl7aFgHaFj&pid=Api&P=0'),
              secondChild: Image.network(
                  'https://tse1.mm.bing.net/th?id=OIP.WrV59q07NftIFy-UFj3UpQHaD-&pid=Api&P=0'),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class Animation2 extends StatefulWidget {
  const Animation2({super.key});

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List_Animation'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          _removeItem(index);
                        },
                      ),
                    ),
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

class tween extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _tweenstate();
  }
}

class _tweenstate extends State<tween> with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation Coloranimation;
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    Coloranimation = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });
    animationController.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween'),
      ),
      body: Center(
          child: Container(
        height: animation.value,
        width: animation.value,
        color: Coloranimation.value,
      )),
    );
  }
}

class Ripple extends StatefulWidget {
  const Ripple({super.key});

  @override
  State<Ripple> createState() => _RippleState();
}

class _RippleState extends State<Ripple> with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;
  var listradius = [100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0];

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
    _animationController.addListener(() {
      setState(() {

    });
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ripple_Effect')),
      body: Center(
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: listradius.map((radius) => Container(
          width: radius*_animationController.value,
          height: radius*_animationController.value,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue.withOpacity(1 - _animationController.value)),
        )).toList()
        ),
      ),
    );
  }
}
