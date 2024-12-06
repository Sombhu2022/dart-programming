// Mixins example

/** 
 
Why Use Mixins?
1. Code Reusability
Instead of duplicating code across multiple classes, you can define reusable functionality in a mixin and apply it to any class.
Example: Adding logging, animation, or serialization behavior.
2. Multiple Behaviors
Dart supports only single inheritance for classes. If you need a class to have multiple functionalities, mixins allow you to "mix in" multiple behaviors.
Example: A Duck can both Fly and Swim.
3. Decoupling Behavior from Hierarchies
Mixins allow you to keep behaviors separate from the main class hierarchy, making your design more modular and maintainable.
Example: Adding error handling to different widgets.
4. Lightweight
Unlike inheritance, mixins don’t carry the overhead of a class hierarchy. They focus only on injecting functionality.
5. Avoiding Deep Inheritance Trees
Too much inheritance can make your code rigid and difficult to manage. Mixins flatten your architecture by focusing on what a class can do rather than what it is.

*/

/**

Key Advantages
Flexibility: Combine multiple behaviors without inheritance restrictions.
Modularity: Keep your code organized and focused on specific behaviors.
DRY Principle: Avoid repeating the same functionality across multiple classes.
 */

mixin Fly {
  void fly() {
    print("Flying high!");
  }
}

mixin Swim {
  void swim() {
    print("Swimming in water!");
  }
}

class Bird with Fly {}

class Fish with Swim {}

class Duck with Fly, Swim {}

void main() {
  // Mixins
  print("\nMixins Example:");
  Bird bird = Bird();
  Fish fish = Fish();
  Duck duck = Duck();

  bird.fly();
  fish.swim();
  duck.fly();
  duck.swim();
}
