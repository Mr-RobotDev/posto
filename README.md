# Create Post App

## Introduction
A flutter app which provides the background images for your text to appear more presentable. You can choose from a variety of categories to view a selection of background images. Infinite scrolling to load more images in each category. Select any image to edit and add text on top of it. Change the aspect ratio of the image to fit your desired dimensions. Export the edited image to share with others or save it to your device.

## Git Commits Format
- Add: Add some code
- Update: Update some code
- Feat: Commit a new feature
- fix: Fix a bug
- style: Improve code quality or added style to some ui component
- clean: Clean useless code
- test: UI/Unit test cases

## Getting Started
Clone this repository by running the following command in terminal
```
git clone https://github.com/MrProDev/create_post.git
```
Open the repository and get all the packages
```
flutter pub get
```
Get Unsplash API key from [here](https://unsplash.com/developers) and add it to the .env file
```
UNSPLASH_API_KEY=''
```
Finally, run the project
```
flutter run
```
## Features
  - Choose from a variety of categories to view a selection of background images
  - Infinite scrolling to load more images in each category 
  - Select any image to edit and add text on top of it
  - Change the aspect ratio of the image to fit your desired dimensions
  - Export the edited image to share with others or save it to your device
  
  With our app, you can easily customize images with text and change their aspect ratio to create a unique design. We provide a range of categories to choose from, ensuring that you'll find the perfect image for your project. Once you've selected an image, simply add your text and adjust the aspect ratio as needed. When you're finished, you can easily export your edited image to save it to your device or share it with others. Plus, with infinite scrolling, you'll never run out of options for your image editing needs.

## Architecture

### Design Pattern

Our app is built using the MVVM design pattern, which separates the user interface (view) from the application logic and data (view model). Each view has its own corresponding view model, which is responsible for managing the state of that view.

To further simplify state management, we used the Stacked pub package, which provides a clean and intuitive way to manage state in Flutter apps. This package allows us to easily separate business logic from UI logic and maintain a clear separation of concerns.

Our app also follows a service-oriented architecture, where each view model calls the appropriate service method to make an API call. These methods are stored in the services and handle all network communication with our backend server.

Overall, our app's architecture is designed to be scalable, maintainable, and easy to understand. By separating concerns and following best practices, we ensure that our app is efficient and performant while also being easy to extend and modify in the future.

### Test-Driven Development
Our app was developed using the Test-Driven Development (TDD) approach. TDD is a software development process where developers write automated tests before writing the actual code. This approach helps ensure that the code is well-structured, modular, and testable from the beginning.

To implement TDD, we used the Flutter Test framework, which provides a robust and easy-to-use testing infrastructure for Flutter apps. We wrote unit tests for each view model and service method, ensuring that each part of the app was thoroughly tested and working as expected.

By following TDD, we were able to catch potential bugs and issues early in the development process, which saved us time and resources in the long run. It also helped us create a more stable and reliable app that is easier to maintain and modify in the future.

## Dependencies
  - flutter_localizations:<br>
        sdk: flutter
  - intl: ^0.17.0
  - cupertino_icons: ^1.0.2
  - stacked: ^3.2.0
  - stacked_services: ^1.0.0
  - flutter_platform_widgets: ^3.2.0
  - cloud_firestore: ^4.4.5
  - firebase_core: ^2.8.0
  - firebase_storage: ^11.0.16
  - image_picker: ^0.8.7+1
  - permission_handler: ^10.2.0
  - cached_network_image: ^3.2.3
  - shimmer: ^2.0.0
  - image_gallery_saver: ^1.7.1
  - widgets_to_image: ^0.0.2
  - google_fonts: ^4.0.3
  - http: ^0.13.5
  - flutter_dotenv: ^5.0.2
  - share_plus: ^6.3.2
  - path_provider: ^2.0.14
  - connectivity_plus: ^3.0.3
  - freezed_annotation: ^2.2.0
  - json_annotation: ^4.8.0
  - flutter_staggered_grid_view: ^0.6.2
  - shared_preferences: ^2.1.0
  - font_awesome_flutter: ^10.4.0
  - flutter_native_splash: ^2.2.19

## Dev Dependencies
  - flutter_lints: ^1.0.0
  - build_runner: ^2.2.0
  - stacked_generator: ^1.0.0
  - mockito: ^5.3.2
  - freezed: ^2.3.2
  - json_serializable: ^6.6.1

## Contributing
We welcome contributions from the community and appreciate any help we can get to improve our app. If you're interested in contributing, please follow these guidelines:

  - Fork the project on GitHub
  - Create a new branch from the dev branch to make your changes
  - Commit your changes and push your branch to your fork
  - Create a pull request against the dev branch with a detailed description of your changes
  - Please make sure to follow good coding practices, including writing clean and concise code, and adding tests where appropriate. All pull requests will be reviewed by our team and we will provide feedback as needed.

If you're interested in contributing to our project, but don't know where to start, take a look at our open issues and see if there are any that interest you. We'd be happy to help you get started and answer any questions you have.

Before contributing, please make sure you have read and agreed to our code of conduct, which outlines the behavior we expect from all members of our community.

Thank you for your interest in contributing to our app!

## Future Improvements

### Draft Saving
In the future, we plan to add a feature that will allow users to save their projects as drafts, so they can access them from any device. This feature will help users to continue their work from where they left off, without having to start from scratch every time they use a different device.

The drafts will be stored on our servers, allowing users to access them from any device, provided they have a working internet connection. Users can also choose to save their projects locally on their device, giving them more control over their data.

We believe that this feature will enhance the overall user experience of our app, making it more convenient and user-friendly. We will keep our community updated as we work on this improvement, and we welcome any feedback or suggestions on how we can make our app even better.

## Known Issues
The text on image reset it's location when the user try to save or share the image. This is a known issue and we are working on it.

## Frequently Asked Questions
Here are some of the most commonly asked questions about our app:

Q: What is the purpose of this app?
<br>
A: Our app is designed to allow users to choose from a variety of categories and create customized images with text, which can be saved and shared on social media or other platforms.

Q: Is this app free?
<br>
A: Yes, our app is free to download and use. But some features in the future will be premium.

Q: Can I use my own images in the app?
<br>
A: Yes, our app allows users to choose their own images from their device's gallery, which can be customized with text and other features.

Q: Is there a limit to the number of projects I can create?
<br>
A: No, there is no limit to the number of projects you can create in our app for now. You can create as many as you like, and save them as drafts to access later. But later, may be the number of projects will be limited to 3 for free users.

If you have any other questions or concerns, please do not hesitate to contact us. We are always happy to help and provide support to our users.