
# react-native-moderate-service

## Getting started

`$ npm install react-native-moderate-service --save`

### Mostly automatic installation

`$ react-native link react-native-moderate-service`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-moderate-service` and add `RNModerateService.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNModerateService.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNModerateServicePackage;` to the imports at the top of the file
  - Add `new RNModerateServicePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-moderate-service'
  	project(':react-native-moderate-service').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-moderate-service/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-moderate-service')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNModerateService.sln` in `node_modules/react-native-moderate-service/windows/RNModerateService.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Moderate.Service.RNModerateService;` to the usings at the top of the file
  - Add `new RNModerateServicePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNModerateService from 'react-native-moderate-service';

// TODO: What to do with the module?
RNModerateService;
```
  