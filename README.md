

## Configure
<p>Go build.gradle and paste it under buildTypes .</p>

```
flavorDimensions "default"
    productFlavors {
        dev {
            dimension "default"
            applicationIdSuffix ".dev"
            versionNameSuffix "-dev"
            resValue "string", "app_name", "flavors-dev"
        }
        prod {
            dimension "default"
            resValue "string", "app_name", "flavors"
        }
    }

```
<p>For change app name go to Manifest.xml and change it.</p>

```
android:label="@string/app_name"

```

### For production Flavor

```
flutter build appbundle --flavor prod -t lib/src/config/flavors/main_prod.dart

```

```
flutter run --flavor prod -t lib/src/config/flavors/main_prod.dart

```

### For development Flavor

```
flutter build appbundle --flavor prod -t lib/src/config/flavors/main_dev.dart

```

```
flutter run --flavor prod -t lib/src/config/flavors/main_dev.dart

```