Weather App (Flutter)

A simple and elegant weather app built with Flutter and Dart that provides real-time weather data using the OpenWeatherMap API. With this app, you can easily check the temperature, humidity, and wind speed of any location you search for.

Table of Contents
Introduction
Features
Tech Stack
Getting Started
Screenshots
Contributing
License
Introduction
This weather app is designed to give users quick access to essential weather information. Whether you're planning your day, a trip, or just curious about the weather in another location, this app has you covered.

Key features include:

Current temperature in Celsius and Fahrenheit.
Humidity percentage.
Wind speed in kilometers per hour and miles per hour.
Search functionality to find weather information for any city worldwide.
Beautiful and responsive user interface.
Features
Real-time Weather Data: The app fetches real-time weather data from the OpenWeatherMap API, ensuring that you receive up-to-date information.

Search Functionality: Easily search for weather information for any city or location by entering its name in the search bar.

Temperature Conversion: Toggle between Celsius and Fahrenheit to display temperature in your preferred unit.

Humidity and Wind Speed: View humidity percentages and wind speeds to help plan your activities.

Responsive Design: The app is designed to work seamlessly on both mobile devices and tablets.

Tech Stack
Flutter: A cross-platform UI framework by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.

Dart: The programming language used in Flutter for building robust and high-performance applications.

OpenWeatherMap API: A reliable and widely-used API for accessing weather data, including current weather conditions and forecasts for locations worldwide.

Getting Started
To run this project locally and explore the code:

Clone the Repository:

bash
Copy code
git clone https://github.com/your-username/weather-app-flutter.git
Navigate to the Project Directory:

bash
Copy code
cd weather-app-flutter
Install Dependencies:

bash
Copy code
flutter pub get
Add API Key: You need to obtain an API key from OpenWeatherMap and add it to the project. Place your API key in the lib/api/api_key.dart file:

dart
Copy code
const String apiKey = 'YOUR_API_KEY_HERE';
Run the App:

bash
Copy code
flutter run
Now, the app should launch on your local machine, and you can start using it to check the weather for various locations.

Screenshots
Weather App Screenshots

Contributing
Contributions are welcome! Feel free to open issues, suggest improvements, or submit pull requests to enhance this weather app. Please follow the Contributing Guidelines.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Enjoy using the Weather App! If you have any questions or feedback, please don't hesitate to reach out. Thank you for using this app!
