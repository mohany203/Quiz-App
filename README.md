
# Flutter Quiz App

## Overview

The Flutter Quiz App is a simple quiz application built using Flutter. It allows users to answer a series of questions and see their results at the end. The app features a home screen, a question screen, and a result screen with a summary of the quiz performance.

## Features

- **Home Screen**: Displays a welcome message and a button to start the quiz.
- **Question Screen**: Presents questions with multiple-choice answers.
- **Result Screen**: Shows the user's score and provides a summary of their answers.
- **Result Summary**: Detailed view of each question, the user's answer, and the correct answer.

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/mohany203/Quiz-App
   cd quiz_app
   ```

2. **Install Dependencies**

   Make sure you have Flutter installed. Then, run:

   ```bash
   flutter pub get
   ```

3. **Run the App**

   Use the following command to run the app:

   ```bash
   flutter run
   ```

   Ensure you have an emulator running or a device connected.

## Usage

1. Launch the app.
2. On the home screen, tap the "Start Quiz" button to begin.
3. Answer the questions by tapping on the answer buttons.
4. After completing the quiz, view your results and the detailed summary.

## Code Structure

- `main.dart`: Entry point of the app. It initializes and runs the `Quiz` widget.
- `quiz.dart`: Contains the main logic for switching between screens and handling quiz state.
- `home.dart`: Displays the home screen with a start button.
- `questions_page.dart`: Shows the questions and handles user answers.
- `result.dart`: Displays the quiz result and summary.
- `result_summary.dart`: Provides a detailed summary of each question and answer.

## Assets

- Images used in the app are located in the `assets/images/` directory.

## Demo

Check out the demo video of the app running:

https://github.com/user-attachments/assets/c6e19af0-7bad-4722-87c8-55981ee73637



## Contributing

Feel free to fork the repository and submit pull requests. For any issues or feature requests, please create an issue on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Flutter](https://flutter.dev/) - For providing the framework to build the app.
- [Google Fonts](https://fonts.google.com/) - For the custom fonts used in the app.
