//buildscript {
//    repositories {
//        google()  // 구글 리포지터리
//        mavenCentral()  // Maven Central 리포지터리 (필요시 추가)
//    }
//    dependencies {
//        // Android Gradle Plugin 설정
//        classpath("com.android.tools.build:gradle:8.1.0")  // AGP 8.6.0 버전 설정
//        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.0")  // Kotlin Gradle Plugin 설정
//    }
//}

plugins {
    id("com.android.application") version "8.7.0"
//    id("com.android.application") version "8.7.0" // AGP 버전을 8.1.0으로 설정
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

//buildscript {
//    repositories {
//        google()  // 반드시 포함해야 함
//        mavenCentral()  // 필요에 따라 추가
//    }
//    dependencies {
//        classpath("com.android.tools.build:gradle:8.1.0")  // 사용하려는 AGP 버전
//        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.0")
//    }
//}



android {
    namespace = "com.example.flutter_project"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.flutter_project"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
