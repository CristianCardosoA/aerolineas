//
//  ViewController.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import UIKit
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let reuseIdentifier = "miCelda"

// Nota: el identificador debe ser ingresado en el storyboard, en el apartado de “Identificador”

    var items = [String]()
    
    override func viewDidLoad() {
        for i in 1...100 {
            items.append("\(i)")
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MiCollectionViewCell
        
        cell.titulo.text = self.items[indexPath.row]
        cell.backgroundColor = UIColor.cyan
        return cell
    }

    // MARK: - UICollectionViewDelegate protocol

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        print("Seleccionaste la celda #\(indexPath.item)!")
    }
}

