#Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# Google Play Services / Flutter Deferred Components
-dontwarn com.google.android.play.core.**
-dontwarn io.flutter.embedding.engine.deferredcomponents.**

# Flutter Local Notifications
-keep class com.dexterous.flutterlocalnotifications.** { *; }

# Geolocator
-keep class com.baseflow.geolocator.** { *; }

# Geocoding
-keep class com.baseflow.geocoding.** { *; }

# Shared Preferences
-keep class io.flutter.plugins.sharedpreferences.** { *; }

# Image Picker
-keep class io.flutter.plugins.imagepicker.** { *; }

# Path Provider
-keep class io.flutter.plugins.pathprovider.** { *; }

# Camera
-keep class io.flutter.plugins.camera.** { *; }

# Google Maps (if used in future or implicitly)
# -keep class com.google.android.gms.maps.** { *; }

# Http
-keep class io.flutter.plugins.http.** { *; }

# Connectivity (if used)
# -keep class io.flutter.plugins.connectivity.** { *; }
