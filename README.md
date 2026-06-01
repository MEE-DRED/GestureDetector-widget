# GestureDetector-widget

# DineWithMee GestureDetector Demo

## Introduction

The younger generation, especially Gen Z, interacts with GestureDetector-powered features almost every day. Whether it is liking a post on Instagram, saving content on TikTok, zooming into a photo, or holding down an item to view more options, these interactions have become second nature to us. However, many people use these features without knowing the technology that makes them possible.

This project was developed to demonstrate Flutter's GestureDetector widget through a real-world DineWithMee use case. Rather than using a simple button or generic example, I wanted to show how GestureDetector can be applied in a food and nutrition platform where users interact with meal recommendations in a way that feels natural and familiar.

## Project Overview

This application simulates a meal feed on DineWithMee. Users are presented with a featured meal card containing a healthy Nigerian Jollof Rice meal. Different gestures performed on the meal card trigger different actions.

The goal is to demonstrate how a single widget can respond to multiple user interactions while maintaining a clean and intuitive user experience.

## Features

### Like a Meal

When a user taps the meal card once, the meal is liked and the application updates the interface to reflect that action.

This interaction is similar to liking a post on social media platforms.

### Save a Meal

When a user double taps the meal card, the meal is saved for later.

This mirrors the way users save content they want to revisit in many modern applications.

### View Nutrition Information

When a user performs a long press on the meal card, nutritional information about the meal is displayed.

This provides users with additional information without overcrowding the main interface.

## Why GestureDetector?

GestureDetector allows Flutter applications to detect and respond to touch-based interactions.

Instead of creating multiple buttons for every action, GestureDetector makes it possible to assign different actions to different gestures on the same widget. This results in a cleaner interface and a more engaging user experience.

In this project, a single meal card supports three different interactions:

* Single tap
* Double tap
* Long press

Each gesture serves a unique purpose and demonstrates how Flutter can create rich user experiences with minimal interface complexity.

## GestureDetector Attributes Used

### onTap

The `onTap` attribute detects a single tap on a widget.

In this project, it is used to like a meal.

### onDoubleTap

The `onDoubleTap` attribute detects two quick taps on a widget.

In this project, it is used to save a meal for future reference.

### onLongPress

The `onLongPress` attribute detects when a user presses and holds a widget.

In this project, it is used to display nutrition information about the selected meal.

## DineWithMee Use Case

DineWithMee is focused on helping people make healthier food choices through culturally relevant nutrition and meal recommendations.

A feature like this could be used within the DineWithMee platform to allow users to:

* Like meals they enjoy
* Save meals they would like to try later
* Access nutritional information quickly
* Interact with meal recommendations in a familiar way

This demonstrates how Flutter widgets can be applied to solve real user needs rather than existing only as technical concepts.

## Technologies Used

* Flutter
* Dart
* Material Design

## Project Structure

```text
lib/
└── main.dart
```

The entire application is implemented within the main.dart file for simplicity and demonstration purposes.

## How to Run the Application

1. Clone the repository.

```bash
git clone <repository-url>
```

2. Navigate into the project folder.

```bash
cd gesture_detector_demo
```

3. Install dependencies.

```bash
flutter pub get
```

4. Run the application.

```bash
flutter run
```

## What I Learned

Before building this project, I understood gestures primarily from a user perspective. I knew how to double tap, long press, and interact with content on mobile applications, but I had never fully considered the widget responsible for handling those interactions behind the scenes.

This project helped me understand how Flutter detects and responds to different user gestures. More importantly, it showed me how a simple widget can significantly improve the user experience by making interactions feel more natural and intuitive.

It also reinforced the importance of connecting technical concepts to real-world applications. Instead of treating GestureDetector as just another Flutter widget, I was able to explore how it could be integrated into a platform like DineWithMee to support user engagement and healthier decision-making through food.

## Screenshots
Screenshots show my process. From basic like feature to customizing GestureDetector for DineWithMee

## Author

Mildred Ebomah

Flutter Widget Presentation: GestureDetector

African Leadership University
