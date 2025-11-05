# Development History

This document chronicles the development journey of the Artemis application, detailing the challenges faced, solutions implemented, and the role of AI assistance throughout the process.

---

## Day 1: Project Foundation and Architecture Design

### Objectives
- Define project requirements and scope
- Establish application structure
- Select technologies and frameworks
- Design UI/UX including color palette and theme

### Implementation

**Project Structure**
- Implemented **Clean Architecture** principles with clear separation of concerns:
  - **Presentation Layer**: UI components and state management (Riverpod)
  - **Domain Layer**: Business logic, entities, and use cases
  - **Data Layer**: Repositories, data sources (remote API and local database), and data models

**Technology Stack**
- Flutter 3.8+ with Dart 3.8+
- Riverpod 3.0 for state management
- GoRouter for navigation
- Isar Community for local database
- Firebase Authentication for user authentication
- OpenAlex API for scientific publications

**UI/UX Design**
- Defined comprehensive color scheme with light and dark themes
- Primary color: `#F6A24D` (warm orange)
- Secondary color: `#E86A7A` (coral red)
- Tertiary color: `#2DB2A9` (turquoise)
- Created Material Design 3 color schemes with proper semantic color mappings
- Established spacing, border radius, and icon size constants for design consistency

### AI Involvement
- Initially, AI generated both the file structure and complete implementations
- **Decision**: Removed all AI-generated code and manually created the foundation
- **Reasoning**: The AI approach generated too much boilerplate. Manual creation ensured:
  - Better understanding of the architecture
  - More maintainable and concise codebase
  - Proper separation of concerns from the start

### Outcome
A clean, well-structured foundation ready for feature implementation.

---

## Day 2: Dependency Resolution and Build Configuration

### Objectives
- Resolve dependency conflicts
- Configure code generation tools
- Establish stable build process

### Challenges

**Build Runner Compatibility Issue**

Encountered a complex dependency conflict between:
- `build_runner` versions
- `source_gen` (used by code generators)
- `riverpod_generator` requirements
- `analyzer` version constraints

The conflict arose from incompatible version ranges:
```
source_gen >=3.0.0 <4.0.1 depends on build ^3.0.0
riverpod_generator >=3.0.0 depends on source_gen >=3.0.0 <5.0.0
```

This created a chain of dependency conflicts involving `test`, `analyzer`, and `build` packages.

### Solutions

**Initial Approach**
- Manually downloaded `build_runner` version 2.7.1
- Used AI assistance to identify version constraints

**Final Solution**
- Settled on `build_runner: ^2.7.1` - the latest stable version compatible with all dependencies
- This version sits at the edge of compatibility, requiring careful dependency management
- The solution required understanding the entire dependency graph and finding the narrow version window where all packages align

### AI Involvement
- AI helped analyze the dependency conflict and suggested compatible version ranges
- Manual investigation was necessary to verify the solution would work long-term

### Outcome
Stable build configuration with code generation working correctly for Freezed, Riverpod Generator, and Isar Generator.

---

## Day 3: UI Screen Implementation

### Objectives
- Create all necessary application screens
- Implement navigation structure
- Establish UI component library

### Implementation

**Screens Created**
- Login page with Google Sign-In option and skip functionality
- Home page with reading statistics, favorites preview, and quick actions
- Article Explorer page for browsing and searching publications
- Article Details page with comprehensive information display
- Settings page for user preferences and app configuration

**Navigation**
- Implemented GoRouter for type-safe navigation
- Created route definitions and parameter handling

### AI Involvement
- UI design concepts were original ideas
- AI assisted with code implementation to accelerate development
- Many fine-tuning adjustments remained (intentionally left for later refinement)

### Outcome
Complete screen structure in place, ready for backend integration. UI components functional but awaiting final polish.

---

## Day 4: Firebase Authentication Integration

### Objectives
- Implement user authentication with Google Sign-In
- Configure Firebase for Android, iOS, and Web platforms
- Handle authentication state management

### Implementation

**Firebase Setup**
- Created Firebase project: `art3mis-app`
- Configured Firebase for multiple platforms:
  - Android: `google-services.json` configuration
  - iOS: `GoogleService-Info.plist` configuration
  - Web: Firebase options in `firebase_options.dart`
- Enabled Google Sign-In provider in Firebase Console

**Authentication Flow**
- Implemented `FirebaseAuthService` implementing `IAuthDatasource` interface
- Created authentication repository following Clean Architecture
- Integrated Google Sign-In SDK
- Implemented auth state observation for session management
- Added skip functionality for users who prefer not to authenticate

### AI Involvement
- AI provided guidance for native platform configurations (Android manifest, iOS Info.plist, etc.)
- Configuration files were generated with AI assistance to ensure platform-specific requirements were met

### Outcome
Complete authentication system working across all platforms with proper error handling and state management.

---

## Day 5: OpenAlex API Integration

### Objectives
- Connect application to OpenAlex API
- Implement article fetching and data mapping
- Create article repository with proper error handling

### Challenges

**Challenge 1: Compilation Error with Use Case Naming**

**Problem**: The use case `GetAutocompletedArticlesUsecase` caused build failures due to its name containing "Autocomplete".

**Root Cause**: The build process had issues with certain naming patterns during code generation.

**Solution**: 
- Renamed the class to follow consistent naming conventions
- Adjusted provider generation to work correctly

**Challenge 2: Infinite Rebuild Loop in Articles Provider**

**Problem**: The `get_articles_provider` created a vicious cycle:
1. Build process initialized and called the articles use case
2. Consumer widget rebuilt due to provider state changes
3. Rebuild triggered another use case call
4. New state change caused another rebuild
5. Cycle repeated indefinitely

**Root Cause**: Poor error handling and state management. The provider was rebuilding the entire UI instead of properly propagating state changes, causing unnecessary re-executions.

**Solution**:
- Refactored error handling to use `DataState` pattern (`DataSuccess`/`DataFailure`)
- Implemented proper state propagation instead of triggering rebuilds
- Separated concerns: state updates no longer triggered use case re-execution
- Ensured providers correctly handle async states without causing cascading rebuilds

### AI Involvement
- Extensive collaboration with AI to debug the provider state management issue
- AI helped identify the root cause of the rebuild cycle
- Together, we implemented the proper state handling pattern

### Implementation Details
- Created `OpenalexApiService` implementing `IArticleApiDatasource`
- Implemented Dio HTTP client with retry logic and proper error handling
- Created DTOs (Data Transfer Objects) for API responses
- Implemented mappers to convert DTOs to domain entities
- Created repository pattern implementation with proper abstraction

### Outcome
Stable API integration with proper error handling, data mapping, and state management. No more infinite rebuild loops.

---

## Day 6: Freezed Code Generation, Data Mapping, and Core Features

### Objectives
- Fix Freezed code generation issues
- Implement proper entity mapping
- Add infinite scrolling
- Implement search with debouncing
- Add filtering capabilities
- Fix caching mechanisms

### Major Challenge: Freezed Code Generation Failure

**Problem**: 
- Freezed code generation (`build_runner build`) was not running correctly
- This blocked development as data models couldn't be generated
- Spent many hours trying to resolve the issue, including early morning debugging session

**Investigation Approach**:
- Initially relied on AI assistance, but solutions didn't work
- **Decision**: Switched to traditional problem-solving approach
- Read official Freezed documentation thoroughly
- Investigated GitHub issues related to Freezed code generation
- Analyzed error messages and build outputs manually

**Solution**:
- **Key Discovery**: Classes needed to be properly annotated for code generation
- **Implementation Decision**: Used `sealed class` instead of `abstract class` for Freezed models
- **Reasoning**:
  - Sealed classes in Dart 3 provide exhaustiveness checking for pattern matching
  - Better type safety than abstract classes
  - Enables compile-time guarantees that all cases are handled
  - More restrictive (classes can't be extended outside the library), preventing misuse
  - Works better with Freezed's code generation

**Additional Annotations**:
- Added proper `@freezed` annotations to all DTO classes
- Configured `@Freezed(genericArgumentFactories: true)` where needed
- Ensured proper part files and imports

### Additional Work

**Entity Mapping**:
- Fixed data mapping between DTOs and domain entities
- Corrected field mappings from OpenAlex API responses
- Ensured type safety throughout the mapping process

**Caching Issues**:
- Identified and resolved caching problems
- Implemented proper cache invalidation strategies
- Ensured cached data doesn't interfere with fresh API calls

**Infinite Scrolling**:
- Implemented pagination support
- Added scroll detection for automatic loading
- Integrated with article list provider

**Search and Filtering**:
- Implemented real-time search functionality
- Added debouncing (500ms delay) to reduce API calls
- Implemented request cancellation when search query changes
- Created filter system for articles (e.g., Open Access filter)

### AI Involvement
- **Initial Approach**: AI generated complete implementations for infinite scrolling, filtering, and search
- **Problem**: Generated code contained excessive boilerplate
- **Decision**: Deleted all AI-generated code
- **Manual Implementation**: Created simpler, more concise solutions manually
- **Result**: Much smaller codebase that was easier to understand and maintain

### Outcome
- Freezed code generation working correctly
- All data models properly generated with sealed classes
- Core features (search, filtering, infinite scrolling) implemented with clean, maintainable code
- Proper caching and request management in place

---

## Day 7: Isar Database Migration and Favorites Implementation

### Objectives
- Resolve Isar dependency issues
- Implement local database for favorites
- Create favorites persistence layer

### Challenge: Isar Package Deprecation

**Problem**: 
- Official `isar` package had not been updated in two years
- Package was incompatible with current Flutter/Dart versions
- No active maintenance from the original maintainer

**Investigation**:
- Researched alternatives and community solutions
- Found discussions in forums about Isar maintenance status
- Discovered community fork

**Solution**:
- Switched to `isar_community` package (`^3.3.0-dev.3`)
- This is an actively maintained community fork of Isar
- Maintained API compatibility, so migration was straightforward
- Updated `isar_community_generator` for code generation

### Unforeseen Challenge: Working Without Internet

**Circumstance**: 
- Internet service provider experienced outages during development
- No internet access for significant portions of the day
- Needed to continue development work

**Resilience Demonstrated**:
- Read documentation from mobile device when possible
- Analyzed code on phone screen, then implemented on computer
- Used offline documentation and code examples
- Persisted through challenging development conditions
- Successfully completed database implementation despite limitations

### Implementation

**Database Schema**:
- Created `ArticleDbModel` for storing favorite articles locally
- Implemented `UserDbModel` for user preferences
- Configured Isar with proper indexes for query performance

**Favorites Repository**:
- Implemented `FavoritesRepositoryImpl` following repository pattern
- Created `ArticlesDao` for database operations
- Added methods:
  - Add article to favorites
  - Remove article from favorites
  - Get all favorites
  - Check if article is favorited

**Features**:
- Favorites persist across app restarts
- Offline access to favorited articles
- Seamless integration with UI

### Outcome
Complete favorites system with local persistence using Isar Community. Database operations working correctly with proper error handling.

---

## Day 8: Testing, Code Quality, and Performance

### Objectives
- Write comprehensive test suite
- Implement integration tests with Maestro
- Refactor and clean codebase
- Analyze performance metrics

### Testing Implementation

**Unit Tests**:
- Created unit tests for repositories
- Tested use cases with mocked dependencies
- Implemented error handling tests
- All tests passing successfully

**Widget Tests**:
- Tested UI components in isolation
- Verified widget behavior and interactions
- Achieved good test coverage for reusable components

**Integration Tests - Initial Attempt**:
- Started with Flutter's built-in integration testing
- Created test scenarios for user workflows

**Integration Tests - Migration to Maestro**:
- **Requirement**: Assignment specifications requested a tool like Maestro for integration testing
- **Decision**: Removed Flutter integration tests and started fresh with Maestro
- **Learning Curve**: Had no prior experience with Maestro
- **AI Assistance**: Used AI to learn Maestro workflow creation
  - Learned YAML syntax for test definitions
  - Understood Maestro's element selection strategies
  - Created comprehensive test flows

### Major Challenge: Maestro Installation on Windows

**Problem**: 
- Installing Maestro on Windows presented significant difficulties
- Main issue: Maestro was detecting Java SDK version 11 instead of the latest installed version
- This was a Windows environment variable configuration problem
- Spent majority of the day resolving installation issues

**Additional Complications**:
- Accidentally deleted some environment variables during troubleshooting
- Temporarily lost ability to run Flutter commands
- Had to restore environment configuration

**Solution**:
- Corrected Java SDK environment variables
- Ensured PATH variables were properly configured
- Verified Maestro installation and Flutter functionality

**Integration Test Flows Created**:
- `basic_user_flow.yaml`: Basic navigation and app interaction
- `complete_user_flow.yaml`: Full user journey (search, filter, save favorites)
- `favorite_persistence.yaml`: Verify favorites persist correctly
- `dark_mode_test.yaml`: Theme switching functionality

### Code Quality Improvements

**Refactoring Activities**:
- **Comment Unification**: Standardized comment style throughout codebase
- **Import Cleanup**: Removed unused imports across all files
- **Unused Classes**: Identified and removed dead code
- **Magic Numbers**: Extracted all magic numbers to named constants
- **Constant Refactoring**: Created proper constant classes:
  - `AppSpacing` for consistent spacing
  - `AppBorderRadius` for border radius values
  - `AppIconSize` for icon dimensions
  - `AppButtonHeight` for button sizes

**Code Organization**:
- Ensured consistent code style
- Improved code readability
- Made codebase more maintainable

### Performance Analysis

**Tools Used**:
- Flutter DevTools with `flutter run --profile`
- Analyzed performance metrics:
  - Frame rendering times
  - Widget build performance
  - Memory usage
  - Network request efficiency

**Findings**:
- Performance metrics appeared healthy from the start
- No significant performance bottlenecks identified
- Application runs smoothly with good frame rates

### Outcome
- Comprehensive test suite covering unit, widget, and integration tests
- Maestro integration tests working correctly
- Clean, maintainable codebase ready for delivery
- Performance verified and optimized

---

## Day 9: Native Assets and Final Polish

### Objectives
- Implement app icons for all platforms
- Create splash screen
- Final documentation updates

### App Icon Implementation

**Tool Used**: IconKitchen
- Used online tool IconKitchen to generate app icons
- Generated all required icon sizes for:
  - Android (multiple densities: mipmap-mdpi, hdpi, xhdpi, xxhdpi, xxxhdpi)
  - iOS (multiple sizes for different devices)
  - Adaptive icons for Android

**Implementation**:
- Properly configured Android manifest with icon references
- Set up iOS icon assets
- Ensured icons display correctly across all platforms

### Splash Screen

**Initial Vision**: 
- Wanted to implement a custom background for splash screen
- Planned personalized design elements

**Android Limitation**:
- After reviewing Android documentation, discovered limitations on splash screen customization
- Android's splash screen system has restrictions on background customization
- Standard Material Design splash screen behavior is enforced

**Implementation**:
- Implemented standard Android splash screen following platform guidelines
- Used Material Design 3 splash screen system
- Configured proper colors and icon display

### Documentation

- Updated HISTORY.md (this document) with comprehensive development details
- Ensured all previous work was properly documented

### Outcome
Application with professional native assets and proper platform integration. Ready for distribution.

---

## Reflection

### Technical Achievements

Successfully implemented a comprehensive Flutter application with:
- Clean Architecture following best practices
- Complete authentication system with Firebase
- Full API integration with OpenAlex
- Local database with favorites persistence
- Advanced features: infinite scrolling, search with debouncing, filtering
- Comprehensive test coverage (unit, widget, integration)
- Multi-language support (English, Spanish, Portuguese)
- Dark mode support
- CI/CD pipeline with GitHub Actions

### Development Approach

**AI-Assisted Engineering**:
- Approached development as a software engineer: analyzing problems first, then using AI for potential solutions
- Applied critical thinking to evaluate AI suggestions
- Reviewed implementations carefully before accepting
- Made informed decisions about when to use AI vs. manual implementation

**Key Learnings**:
- AI is powerful for exploration and suggestions, but manual review is essential
- Sometimes traditional problem-solving (reading docs, GitHub issues) yields better results
- Code quality improves when solutions are understood deeply rather than copied
- Perseverance and resilience are crucial when facing technical challenges

### Perseverance Highlights

- Resolved complex dependency conflicts through deep investigation
- Fixed Freezed code generation by understanding the underlying system
- Worked through internet outages, reading code on mobile devices
- Overcame Maestro installation challenges on Windows
- Successfully implemented all required features despite numerous obstacles

### Project Status

The Artemis application is a fully functional, well-tested, and production-ready scientific publication explorer. The codebase is clean, maintainable, and follows industry best practices. All core requirements have been met, and the foundation is solid for future enhancements.

---

## Roadmap

See the TODO section below for completed features and future plans.

### Completed Features ✅
- [x] Article caching
- [x] Infinite scrolling
- [x] Filtering and search with debounce
- [x] Request cancellation on search change
- [x] Favorites management
- [x] Localization (English, Spanish, Portuguese)
- [x] SVG assets and logos
- [x] Articles read tracking
- [x] Comprehensive testing
- [x] GitHub CI/CD
- [x] README documentation
- [x] Color scheme fixes
- [x] Critical fix: article fetching
- [x] App icon implementation
- [x] Random article feature

### Optional Features in Progress
- [ ] User profile management
- [ ] Skeleton loaders for better UX
- [ ] Improved discovery algorithm (prevent showing same articles)
- [ ] Enhanced splash screen customization
- [x] CI/CD improvements (add tests to build pipeline, release automation)

### Known Issues
- [x] Articles read consistency (needs refinement)
- [ ] Performance optimizations (ongoing)
