
# Flutter Secure Storage

A simple and efficient Flutter utility for managing secure data storage using the [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) package. This utility class allows you to securely save, read, check, delete, and clear sensitive data like tokens and user credentials.

## Features

- Save data securely to the device's storage
- Read data from secure storage
- Delete specific data securely
- Check if a key exists in secure storage
- Clear all stored data

## Installation

To use the `SecureStorageManager`, you need to add `flutter_secure_storage` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_secure_storage: ^9.2.2 
```

Run `flutter pub get` to install the package.

## Code Overview

Here's an overview of how to use the `SecureStorageManager`:

### Import the Class

```dart
import 'package:your_project_path/secure_storage_manager.dart';
```

### Usage Examples

**1. Writing Data**
```dart
await SecureStorageManager.writeData('token', 'your_secure_token_here');
```

**2. Reading Data**
```dart
String? token = await SecureStorageManager.readData('token');
if (token != null) {
  print('Token: $token');
} else {
  print('No token found');
}
```

**3. Deleting Data**
```dart
await SecureStorageManager.deleteData('token');
```

**4. Checking Key Existence**
```dart
bool exists = await SecureStorageManager.containsKey('token');
if (exists) {
  print('Token exists in storage');
} else {
  print('Token does not exist');
}
```

**5. Clearing All Data**
```dart
await SecureStorageManager.clearAllData();
```

## Why Use **`flutter_secure_storage`** Instead of **`SharedPreferences`**

### 1. **Security and Encryption**
- **`flutter_secure_storage`**: Encrypts data stored on the device, ensuring that it is unreadable by unauthorized users or applications. It uses platform-specific secure solutions like Keychain (iOS) and Keystore (Android) to protect data.
- **`SharedPreferences`**: Stores data in plain text and does not provide built-in encryption. This makes it vulnerable to data exposure, especially if the device is compromised.

### 2. **Sensitive Data Storage**
- **`flutter_secure_storage`**: Specifically designed for handling sensitive data such as tokens, passwords, and personal information. It minimizes security risks through encryption and secure data management.
- **`SharedPreferences`**: Suitable for non-sensitive data like user settings or preferences. It should not be used for storing tokens or private information due to the lack of encryption.

### 3. **Compliance and Best Practices**
- **`flutter_secure_storage`**: Helps meet compliance and industry standards for handling sensitive data by providing robust security features.
- **`SharedPreferences`**: Does not comply with security best practices for storing sensitive data since it lacks encryption and proper access controls.

### Summary
For storing tokens and other secure data, using `flutter_secure_storage` is essential to protect against potential data breaches and ensure data integrity. `SharedPreferences` is a convenient solution for non-sensitive data but should be avoided for any information that requires security and encryption.

## Security Considerations

- Always handle tokens and other sensitive data with care to avoid potential data leaks or exposure.
- Ensure your app's permissions and security policies align with data protection requirements.

## Contact

For any questions or feedback, please reach out via email: [mahmoudelsayed.dev@gmail.com](mahmoudelsayed.dev@gmail.com)
