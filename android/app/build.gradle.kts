import org.jetbrains.kotlin.gradle.dsl.JvmTarget
import java.util.Properties

plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}


val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(keystorePropertiesFile.inputStream())
}

android {
    namespace = "com.example.uzbekistan_travel"
    compileSdk = flutter.compileSdkVersion
//    ndkVersion = flutter.ndkVersion


    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlin {

        compilerOptions {
            jvmTarget.set(JvmTarget.JVM_17)
        }
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId =  "uz.travel.my.uzb"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        proguardFiles(
            getDefaultProguardFile("proguard-android-optimize.txt"),
            "proguard-rules.pro"
        )

        splits {
            abi {
                val isBuildingBundle =
                    //noinspection WrongGradleMethod
                    gradle.startParameter.taskNames.any { it.lowercase().contains("bundle") }
                isEnable = !isBuildingBundle
                reset()
                include("armeabi-v7a", "arm64-v8a")
                isUniversalApk = true
            }
        }

        multiDexEnabled=true

    }

    signingConfigs {
//        release {
//            keyAlias keystoreProperties['keyAlias']
//            keyPassword keystoreProperties['keyPassword']
//            storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
//            storePassword keystoreProperties['storePassword']
//        }
        create("release") {
            keyAlias = keystoreProperties.getProperty("keyAlias")
            keyPassword = keystoreProperties.getProperty("keyPassword")
            storePassword = keystoreProperties.getProperty("storePassword")
            storeFile = project.file(keystoreProperties.getProperty("storeFile"))

        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
//                ndk {
//                    noinspection ChromeOsAbiSupport
//                    abiFilters "armeabi-v7a", "arm64-v8a"
//                }

            signingConfig = signingConfigs.getByName("release")
            ndk {
                debugSymbolLevel= "SYMBOL_TABLE"
            }
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                    getDefaultProguardFile("proguard-android-optimize.txt"),
                    "proguard-rules.pro"
            )

        }
        debug {
            signingConfig = signingConfigs.getByName("debug")
        }

    }
    bundle {
        language {
            // Har bir tilni alohida split qiladi
            enableSplit = true
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation ("com.android.support:multidex:1.0.3")
}
