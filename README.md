# [EAP] Dain

[![pub package](https://img.shields.io/pub/v/dain)](https://pub.dev/packages/dain) [![license](https://img.shields.io/github/license/KazaKago/dain)](https://github.com/KazaKago/dain/blob/master/LICENSE)

A dynamic dependency injection framework for Dart developers.  
The library is created inspired by "[Koin](https://github.com/InsertKoinIO/koin)". (Not all features are yet covered.)  

# Basic Usage

## 1. Create Interface & Implementation Class.

Let's create interface class.  

```dart
abstract class ExampleService {
  void sayHello();
}
```

Next, create implementation class.  
At this time, implementation class should extend interfaces.  

```dart
class ExampleServiceImpl extends ExampleService {
  @override
  void sayHello() {
    print("Hello World!");
  }
}
```

## 2. Create module class and Declaring dependencies.

```dart
class ExampleModule extends Module {
  @override
  List<Bean> register() {
    return [
      single<ExampleService>(() => ExampleServiceImpl()),
    ];
  }
}
```

## 3. Register modules and Inject class.

```dart
void main() {
  Dain.start([
    ExampleModule(),
  ]);

  final exampleModel = Dain.inject<ExampleService>();
  exampleModel.sayHello(); // print "Hello World!"
}
```

# Advanced

[WIP]