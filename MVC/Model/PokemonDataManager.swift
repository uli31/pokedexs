//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Rafael González on 23/02/24.
//

import Foundation

class PokemonDataManager{
    
    private var pokemons : [Pokemon] = []
    
    //data source array :P
        let pokemonsArray = [
            ["image":"0", "name": "Wartortle", "ability": "Aqua Shell"],
            ["image":"1", "name": "Bulbasaur", "ability": "Vine Whip"],
            ["image":"2", "name": "Blastoise", "ability": "Hydro Cannon"],
            ["image":"3", "name": "Butterfree", "ability": "Sleep Powder"],
            ["image":"4", "name": "Ivysaur", "ability": "Razor Leaf Storm"],
            ["image":"5", "name": "Jigglypuff", "ability": "Lullaby Melody"],
            ["image":"6", "name": "Charmander", "ability": "Ember Burst"],
            ["image":"7", "name": "Meowth", "ability": "Payday"],
            ["image":"8", "name": "Alakazam", "ability": "Psychic Wave"],
            ["image":"9", "name": "Pidgey", "ability": "Gust Burst"],
            ["image":"10", "name": "Raichu", "ability": "Thunderbolt Blitz"],
            ["image":"11", "name": "Rattata", "ability": "Quick Attack"],
            ["image":"12", "name": "Vaporeon", "ability": "Aqua Stream"],
            ["image":"13", "name": "Jynx", "ability": "Ice Mirror"],
            ["image":"14", "name": "Venusaur", "ability": "Solar Beam"],
            ["image":"15", "name": "Linea", "ability": "Solar Beam"],
            ["image":"16", "name": "Slowbro", "ability": "Zen Shield"],
            ["image":"17", "name": "Dewgong", "ability": "Aurora Veil"],
            ["image":"18", "name": "Spearow", "ability": "Sky Dive"],
            ["image":"19", "name": "Wigglytuff", "ability": "Hypnotic Dance"],
            ["image":"20", "name": "Scyther", "ability": "Blade Cyclone"],
            ["image":"21", "name": "Golduk", "ability": "Aqua Jet"],
            ["image":"22", "name": "Lapras", "ability": "Ice Barrier"],
            ["image":"23", "name": "Sandshrew", "ability": "Sandstorm Shield"]
        ]
    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        return pokemons.count
    }
}
