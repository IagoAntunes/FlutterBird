import 'package:flame/components.dart';
import 'package:flutterbird/objs/obj.dart';
import 'package:flutterbird/util/util.dart';

class Pipe extends Obj {
  String image;
  Pipe(this.image);

  @override
  Future<void>? onLoad() async {
    sprite = await Sprite.load(image);
    position = Vector2(600, random(-200, 0).toDouble());
    size = Vector2(100, 360);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    x -= (100 + score * 15) * dt;
    if (x < -100) {
      x = 600;
      y = random(-200, 0).toDouble();
    }
    super.update(dt);
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
  }

  @override
  void onRemove() {
    super.onRemove();
  }
}
