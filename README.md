
# Aone Task


## Getting Started

These instructions will help you set up your project locally.

### Prerequisites

Ensure you have Flutter installed on your machine. You can download it from the official [Flutter website](https://flutter.dev).

### Installation

1. **Clone the repository:**

    ```sh
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```

2. **Install dependencies:**

    ```sh
    flutter pub get
    ```

3. **Run the app:**

    ```sh
    flutter run
    ```

### Project Structure

A brief overview of your project's structure:
## Project Structure

The project is organized into the following directories:

- **core**: Contains core functionalities such as data handling, local storage, networking, routing, theming, translations, and reusable widgets.
- **modules**: Includes the main modules of the application.
  - **auth**: Module for authentication-related screens and logic.
  - **home**: Module for the home screen and related logic.
  - **splash_screen**: Module for the splash screen.
    - **data**: Contains data bindings for the splash screen.
    - **logic**: Contains the logic for the splash screen, including the animated splash screen package and the splash screen controller.
    - **view**: Contains the splash screen page.
- **utils**: Utility helpers for various functionalities.
  - **awesome_notifications_helper.dart**: Helper for handling notifications using the awesome_notifications package.
  - **fcm_helper.dart**: Helper for handling Firebase Cloud Messaging (FCM).

```plaintext
lib/
├── core/
│   ├── data/
│   ├── local/
│   ├── network/
│   ├── routes/
│   ├── theme/
│   ├── translations/
│   └── widgets/
├── modules/
│   ├── auth/
│   ├── home/
│   └── splash_screen/ 
│       ├── data/
│       ├── logic/
│       └── view/
│           └── widgets
|                └── widget.dart
│           └── splash_screen_page.dart
├── utils/
│   ├── awesome_notifications_helper.dart
│   └── fcm_helper.dart
├── main.dart
└── my_custom_widget.dart

```

### Project Modules

#### Core

- **data**: Handles data operations and API calls.
- **local**: Manages local storage and caching.
- **network**: Handles network operations and API integrations.
- **routes**: Manages application routing and navigation.
- **theme**: Contains theme data for the application.
- **translations**: Manages localization and translations.
- **widgets**: Contains reusable widgets used across the application.

#### Modules

- **auth**: Handles user authentication and related screens.
- **home**: Manages the home screen and related logic.
- **splash_screen**:Manages the splash screen
  
#### Utils

- **awesome_notifications_helper.dart**: Utility helper for handling notifications using the awesome_notifications package.
- **fcm_helper.dart**: Utility helper for handling Firebase Cloud Messaging (FCM).


## Tasks

This project includes the following tasks:

1. **Setup Project Structure**:
    - Organize the project into core, modules, and utils directories.
    - Create necessary subdirectories and files.

2. **Implement Splash Screen**:
    - Create splash screen page, controller, and bindings.
    - Add animations for the splash screen.
    - make it **Dynamic** as Backend Can Change it as business need 

3. **Authentication Module**:
    - Implement authentication logic and screens.

4. **Home Screen Module**:
    - Create Part of  home screen 

## Design  Of Tasks
[miro_link for Good Quality](https://miro.com/app/board/uXjVKVNG2Tg=/?share_link_id=970742193169)
### Splash Screen

![Splash Screen](https://github.com/Fathi123-max/Aone_Task/blob/master/tasks/splash_screen_task.png)

### Authentication 
![Authintication](https://github.com/Fathi123-max/Aone_Task/blob/master/tasks/Authentication.jpg)

 ## Show Case Video
<a href="https://youtu.be/hgO8wZvk2Fs">
  <img src="https://github.com/Fathi123-max/Aone_Task/blob/master/tasks/app_screeb_shoot.png" alt="Demo Video" width="300"/>
</a>


