//
//  PokemonExt.swift
//  Dex
//
//  Created by Vaibhav kulkarni on 18/06/25.
//
import SwiftUI

extension Pokemon {
    var spriteImage: Image {
        if let data = sprite, let image = UIImage(data: data) {
            Image(uiImage: image)
        }else{
            Image(.bulbasaur)
        }
    }
    
    var shinyImage: Image {
        if let data = shiny, let image = UIImage(data: data) {
            Image(uiImage: image)
        }else{
            Image(.shinybulbasaur)
        }
    }
    
    var background: ImageResource{
        switch types![0]{
        case "rock", "ground", "steel", "fighting", "ghost", "dark", "psychic":
                .rockgroundsteelfightingghostdarkpsychic
        
        case "fire", "dragon":
                .firedragon
            
        case "flying", "bug":
                .flyingbug
        case "ice":
                .ice
        case "water":
                .water
        default:
                .normalgrasselectricpoisonfairy
        }
    }
    
    var typeColor: Color {
        
        Color(types![0].capitalized)
    }
    
    var stats:[Stat]{
        [
            Stat(id: 1, name: "Hp", value: hp),
            Stat(id: 2, name: "Attack", value: attack),
            Stat(id: 3, name: "Defense", value: defense),
            Stat(id: 4, name: "Special Attack", value: specialAttack),
            Stat(id: 5, name: "Special Defense", value: specialDefense),
            Stat(id: 6, name: "Speed", value: speed)
        ]
    }
    
    var highestStat: Stat {
        stats.max {
            stat1, stat2 in stat1.value < stat2.value
        }!
    }
}

struct Stat: Identifiable{
    let id: Int
    let name: String
    let value: Int16
}

