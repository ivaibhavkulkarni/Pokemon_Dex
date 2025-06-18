# Dex - Pokémon Pokedex iOS App
## Overview
Dex is a SwiftUI-based iOS application that serves as a Pokémon Pokedex, allowing users to browse, search, and manage details of Pokémon from the first generation (up to Pokémon #151). The app fetches data from the PokéAPI, stores it locally using CoreData, and provides a rich user experience with features like favoriting Pokémon, dynamic search, and interactive widgets built with WidgetKit and SwiftData.
Features

Pokémon Listing and Details: Displays a list of Pokémon with their sprites, names, types, and favorite status. Tapping a Pokémon navigates to a detailed view showing stats (HP, Attack, Defense, etc.) and a toggleable shiny sprite.
CoreData Integration: Persists Pokémon data locally using CoreData for offline access, with a unique ID constraint to prevent duplicates.
Favorite Swipe Feature: Users can swipe left on a Pokémon in the list to toggle its favorite status, with a dynamic UI reflecting the change (yellow star for favorites).
Search and Filter: A searchable interface with a text field to filter Pokémon by name and a toolbar button to filter by favorites, using dynamic NSPredicate for real-time updates.
WidgetKit Support: Includes a widget displaying a user’s favorite Pokémon, leveraging WidgetKit and SwiftData for efficient data retrieval and display.
Dynamic Fetching: Fetches Pokémon data incrementally from PokéAPI, with a "Fetch Pokémon" button to resume fetching if interrupted, ensuring all 151 Pokémon can be loaded.
Custom UI: Utilizes custom type colors and background images for each Pokémon type, enhancing visual appeal. Supports both light and dark modes.
Error Handling: Robust error handling for network requests and CoreData operations, with user-friendly prompts for fetch failures or empty states.

## Technical Implementation

- Architecture: Built with SwiftUI for a declarative UI, leveraging @FetchRequest and @Environment for CoreData integration.
- Data Model: The Pokemon entity in CoreData stores attributes like id, name, types, hp, attack, defense, specialAttack, specialDefense, speed, sprite, shiny, and favorite. The FetchedPokemon struct maps API responses to CoreData entities.
- Networking: FetchService uses URLSession for asynchronous API calls to PokéAPI, with a custom JSONDecoder to handle snake_case keys and nested data structures.
- Persistence: PersistenceController manages CoreData setup, including an in-memory store for previews and a persistent store for production. Merge policies ensure data consistency.
- Widgets: Implemented using WidgetKit, with SwiftData providing a lightweight data layer for widget-specific queries, optimized for performance.
- UI Components:
- ContentView: Handles the main list, search, and fetch logic, with conditional views for empty states.
- PokemonDetail: Displays detailed Pokémon information with a scrollable view and interactive favorite button.
- Custom Color extensions map Pokémon types to specific colors defined in the asset catalog.


- Assets: Includes custom images for Pokémon types, app icons, and placeholders, with a comprehensive asset catalog for type-specific colors.

## Requirements

iOS 18.0 or later
Xcode 16.4 or later
Swift 6.0

- Setup Instructions

- Clone the Repository:git clone https://github.com/yourusername/Dex.git


- Open the Project:
- Open Dex.xcodeproj in Xcode.


## Configure Signing:
- Update the DEVELOPMENT_TEAM and PRODUCT_BUNDLE_IDENTIFIER in the project.pbxproj file to match your Apple Developer account.


## Build and Run:
Select an iOS simulator or device and press Cmd + R to build and run the app.


## Fetch Pokémon:
On first launch, tap the "Fetch Pokémon" button to populate the Pokedex with data from PokéAPI.



Project Structure
Dex/
├── DexApp.swift                # App entry point
├── ContentView.swift           # Main Pokedex list view
├── PokemonDetail.swift         # Pokémon detail view
├── FetchService.swift          # Networking service for PokéAPI
├── FetchedPokemon.swift        # Struct for decoding API responses
├── Persistence.swift           # CoreData setup and preview data
├── Assets.xcassets/            # Images and type-specific colors
├── Dex.xcdatamodeld/           # CoreData model
├── Dex.xcodeproj/              # Xcode project configuration

## Future Enhancements

Add support for additional Pokémon generations.
Implement a caching mechanism for sprites to reduce network load.
Enhance widgets with more interactive features, such as cycling through favorites.
Add unit tests for networking and CoreData operations.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue to discuss proposed changes.
License
This project is licensed under the MIT License. See the LICENSE file for details.
Acknowledgments

PokéAPI for providing the Pokémon data.
Apple’s SwiftUI, CoreData, and WidgetKit documentation for guidance.
## Screenshots:


