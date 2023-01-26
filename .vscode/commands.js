{
  name: 'COntains common commands for the project'[
    ({
      name: 'Get Emulator List',
      path: 'C:Users\nkoleAppDataLocalAndroidSdkemulatoremulator -list-avds',
    },
    {
      name: 'Get Emulator ID List',
      path: 'C:Users\nkoleAppDataLocalAndroidSdkplatform-tools\adb devices',
    },
    {
      name: 'Ron on Specific Device',
      path: 'npx react-native run-android --deviceId="78KVB20525002436"',
    },
    {
      name: 'Ron on Specific Device',
      path: 'npx react-native init AwesomeProject"',
    },
    {
      name: 'Ron on Specific Device',
      path: 'npx react-native init AwesomeProject"',
    },
    {
      name: 'Native Base',
      path: 'npm install native-base --save (or use yarn add native-base --save), react-native link"',
    },
    {
      name: 'Native Base',
      path: 'react-native start --reset-cache',
    },
    {
      name: 'Signing Report',
      path: 'Android/gradlew signingReport',
    },
    {
      name: 'Firebase Auth',
      path: 'yarn add @react-native-firebase/app, yarn add @react-native-firebase/auth, yarn add @react-native-firebase/messaging',
    },   {
      name: 'Remove Android Build',
      path: 'rm build -recurse',
    },   {
      name: 'Clean Android Build',
      path: 'cd android && ./gradlew clean',
    },   {
      name: 'Build APK Step 1',
      path: 'react-native bundle --dev false --platform android --entry-file index.js --bundle-output ./android/app/src/main/assets/index.android.bundle --assets-dest ./android/app/src/main/res',
    },   {
      name: 'Build APK Step 2',
      path: 'cd android && ./gradlew assembleRelease or assembleDebug',
    })
  ];
}
