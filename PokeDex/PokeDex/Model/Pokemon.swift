//
//  Pokemon.swift
//  PokeDex
//
//  Created by Sujanth Sebamalaithasan on 3/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _base_experience: String
    private var _nextEvolutionTxt: String!
    private var _pokemonURL: String!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self._pokedexId)/"
    }
    
    init(name: String, pokedexId: Int, description: String, type: String, defense: String, height: String, weight: String, base_experience: String, nextEvolutionTxt: String, pokemonURL: String) {
        
        self._name = name
        self._pokedexId = pokedexId
        self._description = description
        self._type = type
        self._defense = defense
        self._height = height
        self._weight = weight
        self._base_experience = base_experience
        self._nextEvolutionTxt = nextEvolutionTxt
        self._pokemonURL = pokemonURL
    }
    
    func downloadPokemonDetails(completed: DownloadComplete) {
        
        Alamofire.request(_pokemonURL).responseJSON { (response) in

            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
                
                if let height = dict["height"] as? String {
                    self._height = height
                }
                
                if let base_experience = dict["base_experience"] as? String {
                    self._base_experience = base_experience
                }
                
                
                
            }
        }
    }
}
