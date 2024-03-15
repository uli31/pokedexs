//
//  PokemonDetailViewController.swift
//  MVC
//
//  Created by Rafael González on 24/02/24.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var receivedPokemon : Pokemon?
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var oikemonImage: UIImageView!
    @IBOutlet weak var ability: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text=receivedPokemon?.name
        ability.text=receivedPokemon?.ability
        
        if let pokemonName = receivedPokemon?.image {
            // Cargar la imagen del nombre del Pokémon desde los recursos de la aplicación
            let pokemonImage = UIImage(named: pokemonName) ?? UIImage(named: "defaultImageName")
            // Asignar la imagen cargada a oikemonImage.image
            oikemonImage.image = pokemonImage
        } else {
            // Si receivedPokemon?.name es nil, asigna una imagen predeterminada
            oikemonImage.image = UIImage(named: "defaultImageName")
        }




    }
    
    @IBAction func crrar(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)

    }

 
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
