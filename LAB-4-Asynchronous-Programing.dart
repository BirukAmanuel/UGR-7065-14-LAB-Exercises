import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherData {
  final String city;
  final double temperature;
  final String condition;

  WeatherData(this.city, this.temperature, this.condition);

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      json['name'],
      json['main']['temp'].toDouble(),
      json['weather'][0]['main'],
    );
  }
}

Future<WeatherData> fetchWeather(String apiKey, String city) async {
  final response = await http.get(
    Uri.parse('http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric'),
  );

  if (response.statusCode == 200) {
    return WeatherData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  final String apiKey = 'YOUR_API_KEY';
  final String city = 'YOUR_CITY';

  try {
    final WeatherData weatherData = await fetchWeather(apiKey, city);
    print('Current weather in ${weatherData.city}:');
    print('Temperature: ${weatherData.temperature} °C');
    print('Condition: ${weatherData.condition}');
  } catch (e) {
    print('Error: $e');
  }
}
