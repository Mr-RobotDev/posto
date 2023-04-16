# Create Post App

## Introduction
A flutter app which provides the background images for your text to appear more presentable.

More updates coming soon...

## Git Commits Format
- Add: Added some code
- Update: Updated some code
- Feat: Made a new feature
- fix: Fixed a bug
- style: improved code readability or added style to some ui component
- clean: clean useless code
- test: wrote basic logic or ui test cases

## Getting Started
Clone this repository by running the following command in terminal
```
git clone https://github.com/MrProDev/create_post.git
```
Open the repository and get all the packages
```
flutter pub get
```
Open android emulator or Xcode Simulator (only if you have mac) with this command
```
open -a Simulator
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
  - stacked: ^3.1.0-beta.0
  - stacked_services: ^0.9.8
  - google_fonts: ^4.0.3
  - font_awesome_flutter: ^10.3.0
  - flex_color_scheme: ^6.1.2
  - lottie: ^2.2.0
  - flutter_dotenv: ^5.0.2
  - http: ^0.13.5
  - widgets_to_image: ^0.0.2
  - image_gallery_saver: ^1.7.1
  - text_editor: ^0.7.0
  - flutter_svg: ^2.0.1
  - fancy_shimmer_image: ^2.0.2
  - flutter_native_splash: ^2.2.16

## Dev Dependencies
  - build_runner: ^2.2.0
  - stacked_generator: ^0.8.1
  - mockito: ^5.1.0
  - flutter_launcher_icons: ^0.11.0

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
### Editing Templates
In the future, we plan to add a feature that will allow users to choose from a variety of pre-designed templates for each category. These templates will contain a background image and some text already written on it, which users can customize to their liking.

This feature will save users time by providing beautiful, professionally designed templates that they can easily modify and export as an image. Users can also choose to create their own custom designs from scratch, giving them more creative freedom.

We believe that this feature will enhance the overall user experience of our app and make it more appealing to a wider audience. We will keep our community updated as we work on this improvement, and we welcome any feedback or suggestions on how we can make our app even better.

### Draft Saving
In the future, we plan to add a feature that will allow users to save their projects as drafts, so they can access them from any device. This feature will help users to continue their work from where they left off, without having to start from scratch every time they use a different device.

The drafts will be stored on our servers, allowing users to access them from any device, provided they have a working internet connection. Users can also choose to save their projects locally on their device, giving them more control over their data.

We believe that this feature will enhance the overall user experience of our app, making it more convenient and user-friendly. We will keep our community updated as we work on this improvement, and we welcome any feedback or suggestions on how we can make our app even better.

## Acknowledgements
We would like to express our gratitude to the [Mr-RobotDev](https://github.com/Mr-RobotDev) for his invaluable help in creating this project. His expertise and knowledge were essential in making this app a reality.

Finally, we would like to thank our users for their continued support and feedback. We are committed to providing a high-quality app that meets your needs and expectations, and we appreciate your feedback on how we can improve and enhance our app.

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

Q: Can I edit an image that I've already created?
<br>
A: Yes, our app allows users to access their previous projects and edit them as needed.

Q: Is there a limit to the number of projects I can create?
<br>
A: No, there is no limit to the number of projects you can create in our app for now. You can create as many as you like, and save them as drafts to access later. But later, may be the number of projects will be limited to 3 for free users.

If you have any other questions or concerns, please do not hesitate to contact us. We are always happy to help and provide support to our users.
## Changelog
### Version 1.0 (Release Date: DD/MM/YYYY)
  - Initial release of the app, with the following features:
    - Choose from a variety of categories
    - Scroll to load more images
    - Choose an image and add/edit text on it
    - Change aspect ratio of the image
    - Export customized image as a file
## Examples
<table>
            <tr>
                <td style="padding: 1rem">
                    <p>Categories View</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220430268-b5af53c5-a221-4970-a3dd-d9d8aa37fbfb.png"
                        alt="categories view" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Images View</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220433424-f64cbcdb-5180-4eb6-9366-f17576747ffe.png"
                        alt="images view" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Image Selected</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220433886-419a556e-e57c-4280-8405-ec4462d0c43a.png"
                        alt="image selected" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Open Text Editor</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220433992-677eaf29-ab55-4fc6-ac28-30a759b0803e.png"
                        alt="open text editor" width="180" height="390">
                </td>
            </tr>
            <tr>
                <td style="padding: 1rem">
                    <p>Write Text</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220434134-d01c6c74-151f-4c40-98df-b6514f975390.png"
                        alt="write text" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Change Text Color</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220434255-80354066-8f0e-4d25-a913-a5c074c8eced.png"
                        alt="change text color" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Change Text Background</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220434583-bce5ccab-a2df-4982-a548-1b826e86da33.png"
                        alt="change text background" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Align Text</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220434758-922a100e-40c8-4b70-8d89-e1dfdbb32d4f.png"
                        alt="align text" width="180" height="390">
                </td>
            </tr>
            <tr>
                <td style="padding: 1rem">
                    <p>Text Added</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220435200-08512fa1-35e0-4431-9392-79dbe3e64fab.png"
                        alt="text added" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Position Text</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220435314-45de4109-85c5-452f-9f8e-e909f2422882.png"
                        alt="position text" width="180" height="390">
                </td>
                <td style="padding: 1rem">
                    <p>Export Image</p>
                    <img src="https://user-images.githubusercontent.com/44782056/220435497-3f79da78-818d-4c9e-8051-2bf4fff1feeb.png"
                        alt="export image" width="180" height="390">
                </td>
            </tr>
        </table>
