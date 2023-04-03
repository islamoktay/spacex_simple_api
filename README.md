# SpaceX Simple Rest API

### How to run the mobile application

1. Install Flutter: First, make sure you have installed Flutter on your computer. You can follow the instructions for installation from the official Flutter website.
2. Clone the repository: On the GitHub repository page, click on the "Code" button and copy the URL of the repository. Then, open a terminal window on your computer and type the command ```git clone https://github.com/islamoktay/spacex_simple_api.git``` to clone the repository to your local machine.
3. Set up the Flutter environment: Once the repository is cloned, navigate to the project directory in the terminal window and run the command ```flutter doctor``` to check if you have all the required dependencies installed. If not, install them as per the instructions.
4. Get the third party packages: Run the command ```flutter pub get``` to get the dependencies.
5. Arrange emulator: Install or open emulator if necessary.
6. Run the project: Finally, run the command ```flutter run``` to launch the app on an emulator or a connected device.
You need to write this command line on terminal.

### How to run unit tests

1. Navigate to the project directory in the terminal window.
2. Run the command ```flutter test```.
3. If you want to get test coverage report you can also run the command ```./test_coverage``` or you can find the process inside the script file.

### How to run integration tests

1. Navigate to the project directory in the terminal window.
2. Run the command ```flutter drive --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart```.
3. You can also run the command ```./run_integration``` or you can find the process inside the script file.

### Some screenshots from project
<img src="https://raw.githubusercontent.com/islamoktay/spacex_simple_api/main/assets/doc/splash_screen.png" width="200"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://raw.githubusercontent.com/islamoktay/spacex_simple_api/main/assets/doc/home_screen.png" width="200"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://raw.githubusercontent.com/islamoktay/spacex_simple_api/main/assets/doc/bottom_sheet.png" width="200"/>&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://raw.githubusercontent.com/islamoktay/spacex_simple_api/main/assets/doc/item_detail.png" width="200"/>&nbsp;&nbsp;&nbsp;&nbsp;

## 1. Description

It is a simple project to show RESTful API calls. In this project; I used dio for HTTP client, flutter_bloc for state management, get_it for dependency injection, auto_route for navigating etc. I tried to follow Clean Architecture design pattern and best practice lint rules. I also added simple unit tests and integration tests for the project.

## 2. Project Structure

Every feature is very well separated from each other and inside the feature, the UI code and business logic is separated as per 'Clean Architecture + Domain driven architecture' thereby providing the separation of concern.

     
    spacex_simple_api
      - coverage
      - integration_test
         ├── screens
         ├── use_cases
         └── app_test.dart
      - lib
         ├── core
         │   ├── base
         │   |     └── spacex_simple.api.dart
         │   ├── constants
         │   |     ├── assets.gen.dart
         |   |     └── fonts.gen.dart
         |   |     └── widget_keys.dart
         │   ├── dependency_injector
         │   |     └── di.dart
         │   ├── router
         │   |     └── route_management.dart
         │   |     └── route_management.gr.dart
         │   |     └── router_path.dart
         │   ├── theme
         │   |     └── app_colors.dart
         │   |     └── custom_text_styles.dart
         │   ├── utils
         │   |     └── client_service
         │   |     └── date_util
         │   |     └── snack_bar
         │   └── widgets
         │         └── custom_scaffold.dart
         ├── features
         │      ├── home
         │      │    ├── data
         │      |    |      ├── model
         │      |    |      |      └── rocket_info.dart
         │      |    |      |      └── rocket_info.freezed.dart
         │      |    |      |      └── rocket_info.g.dart
         │      |    |      └── repository_impl
         │      |    |              └── home_repo_impl.dart
         │      |    ├── domain
         │      |    |      └── entities
         │      |    |      └── repository
         │      |    |             └── home_repo.dart
         │      |    └── presentation
         │      |          ├── bloc
         │      |          |     └── home_bloc.dart
         │      |          |     └── home_event.dart
         │      |          |     └── home_state.dart
         │      |          └── view
         │      |          |    └── home_view.dart     
         │      |          |    └── mission_detail_view.dart     
         │      |          └── widgets
         │      └── splash
         │            └── presentation
         │                  └── view
         │                        └── splash_view.dart     
         └── main.dart
      - test
          └── feature
                └── home
                      ├── home_bloc_test.dart
                      └── test_data.dart
      - test_driver

## 3. Dependency Injection

It provides the instances for blocs, repositories and services in out app.

I used [GetIt](https://pub.dev/packages/get_it) to handle the dependency injection. This makes it easier for me to inject into every app and helps me to mock or implement different class implementations to our dependencies.

[Here](https://pub.dev/packages/get_it#getting-started) to check how to use GetIt

## 4. Navigation

To handle the navigation in the app we should use a router handler, to do that we can create a class where we can personalize the behavior of our navigation by screen named paths or use any other router popular and stable package

In this project, I decided to use [Auto Route](https://pub.dev/packages/auto_route), this packages will help me to only have one file where we will declare all the screens and the path of the screen, and the package will autogenerate the necessary and repetitive code to handle the routing in the app. Also this package has other features like change the transition animation by screens, or simplify the nested navigation.

[Here](https://pub.dev/packages/auto_route#setup-and-usage) to check how to use AutoRoute

## 5. State Management

I used BLoC for state management and to handle business logic. These are the advantages of '[flutter_bloc](https://pub.dev/packages/flutter_bloc)' package.

Simplifies state management: flutter_bloc provides a clean and simple way to manage application state using the BLoC (Business Logic Component) design pattern. This pattern allows you to separate the UI and business logic, making your code easier to understand and maintain.
Increases code reusability: With flutter_bloc, you can easily reuse the same BLoC instance across multiple widgets, which reduces code duplication and makes your code more efficient.
Makes testing easier: flutter_bloc makes it easy to test your application by providing a way to mock the BLoC and its dependencies. This allows you to test your application logic without having to interact with the UI.
Improves performance: By using flutter_bloc, you can reduce the number of unnecessary widget rebuilds, as the BLoC only emits new states when the data changes. This improves your app's performance and responsiveness.

Overall, flutter_bloc is a powerful state management library that simplifies your application's architecture, makes your code more reusable, and improves your app's performance.

[Here](https://pub.dev/packages/flutter_bloc) to check how to use Flutter BLoC

## 6. Http Client

I used '[dio](https://pub.dev/packages/hive)' for Http Client. Here are the advantages of that package.

Dio is a powerful HTTP client for Dart/Flutter, which supports global configuration, interceptors, FormData, request cancellation, file uploading/downloading, timeout, and custom adapters etc.

[Here](https://pub.dev/packages/dio) to check how to use Dio
