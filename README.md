# widgets_practice 
The MyApp class is a stateless widget that defines the main application interface. It contains a Scaffold with an AppBar and a Center widget as the body. Inside the Center widget, there is a Column that contains a GreetingWidget, a container with a product image and description, and a CounterWidget.

The GreetingWidget is a stateless widget that displays a greeting message as a text.

The CounterWidget is a stateful widget that displays a counter and a button. It has a state variable counter that keeps track of the current count and a incrementCounter function that increments the count. The widget is updated whenever the count changes.

The code is wrapped inside a MaterialApp, and the app runs with the MyApp widget as the home screen.
