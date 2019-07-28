//
//  BookCollectionViewController.swift
//  BookMarker
//
//  Created by Ryan Wheeler on 7/27/19.
//  Copyright © 2019 Ryan Wheeler. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BookCollectionViewController: UICollectionViewController {
    
    // MARL: Properties
    
    var books = [Book]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleBooks()
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    
    } // numberOfSections


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return books.count
    
    } // collectionView

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

    private func loadSampleBooks () {
          let photo1 = UIImage (named: "book1")
          let photo2 = UIImage (named: "book2")
          let photo3 = UIImage (named: "book3")
        
        guard let book1 = Book (title: "The Catcher in the Rye", author: "J.D. Salinger", pages: 277, cover: photo1)
            else {
              
                fatalError("Unable to instantiate book1")
                
            } // else
        
        guard let book2 = Book (title: "Frankenstein", author: "Mary Shelley", pages: 280, cover: photo2)
            else {
                
                fatalError("Unable to instantiate book1")
                
            } // else
        
        guard let book3 = Book (title: "Kafka on the Shore", author: "Haruki Murakami", pages: 505, cover: photo3)
            else {
                
                fatalError("Unable to instantiate book1")
                
            } // else
        
        books += [book1, book2, book3]
    
    } // loadSampleBooks

} // class BookViewController
