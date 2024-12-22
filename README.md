# Sprints Task 2

## Project Overview

This project, **Sprints Task 2**, is a Flutter application that demonstrates fundamental Flutter concepts such as state management, widgets, theming, and asset management. The application displays two images side by side, one fetched from the network and the other from the assets folder. The UI is styled with a custom font and includes animations for an elegant design.

## Features

- **Custom Font**: The app uses the `Suwannaphum-Regular` font for a unique user experience.
- **Dynamic Image Display**: Displays a network image and an asset image with a descriptive label below each.
- **Styled Text**: Adds shadow effects and styling to text for a polished look.

## Project Structure

### Main Files:

- **`main.dart`**: Contains the app's entry point and main UI logic.
- **Assets**:
  - `assets/images/asset_image.jpg`: The asset image displayed in the app.
  - `assets/fonts/Suwannaphum-Regular.ttf`: The custom font used for the app's text.

## How to Run the Project

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/OmarAmeer96/lutter-Fundamentals-Task2.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd sprints_task_2
   ```
3. **Get Dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the App**:
   ```bash
   flutter run
   ```

## Screenshots

### AppBar

- Displays the title **"My First Project"** with a custom font and bold styling.

### Images Section

- Shows two images side by side:
  - **Network Image**: Fetched from `https://picsum.photos/200`.
  - **Asset Image**: Loaded from `assets/images/asset_image.jpg`.

### Text Section

- Displays a styled text "The two images are displayed" with shadow effects and orange coloring.

## Folder Structure

```
project_root/
├── assets/
│   ├── fonts/
│   │   └── Suwannaphum-Regular.ttf
│   └── images/
│       └── asset_image.jpg
├── lib/
│   ├── main.dart
├── pubspec.yaml
```

## Screenshots

| Output                    | Emulator Output           |
| ------------------------- | ------------------------- |
| <img src="" width="700"/> | <img src="" width="300"/> |
