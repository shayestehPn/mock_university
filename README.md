This Flutter project is structured into four distinct layers to ensure a clean and scalable architecture and uses BLOC state management.

The layers are:

-Business Logic Layer -Data Layer -Domain Layer -Presentation Layer

Business Logic Layer
-Manages state using Cubits and States.

-Handles the communication between the domain layer and the presentation layer.

Data Layer
-DataProvider classes:

API Provider Classes: Remote API Providers which Handle API calls. Local storage classes: Save and retrieve data locally, using secure storage and sqfLite.

-DTO Classes:

Represent data fetched from APIs without any modifications.

-Mapper Classes:

Helper classes which Convert DTOs to Entity and Presentation Data classes in repositories.

-Repository classes:

Call functions from data providers in data layer and convert DTOs to entity and presentation data classes using mappers.

Domain Layer
Presentation Data Classes: Data specific to individual pages.

Entity Classes: data models used across the app, matching ui needs.

Presentation Layer
Manages the UI and user interactions.

Tools and Packages
-Dependency Injection and Navigation

GetX is used for Dependency injection and Navigation between routes.

-Responsiveness

Screen Util Package ensures that the app is responsive across various devices.

-Freezed & Build Runner

Freezed and Build Runner are used to generate immutable classes, data classes, and other boilerplate code.

Freezed simplifies the creation of models, and Build Runner automatically generates the necessary code.


Setup Instructions
-Clone the Repository:

git clone <repository_url>

-Install Dependencies:

fvm flutter pub get

-Install Build Runner and Freezed Dependencies:

dart pub add freezed_annotation dart pub add build_runner

-Generate Code with Build Runner:

fvm dart run build_runner build --delete-conflicting-outputs

-Run the App:

flutter run
