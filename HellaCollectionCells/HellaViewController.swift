//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var cellViewOutlet: UICollectionView!
    
    
    
    var fibonacciArray = [0, 1]
    var numbersArray = [Int]()
    
    
    func generateFibonacciNum() -> [Int] { //
        for i in 0...20 {
            let sum = fibonacciArray[i] + fibonacciArray[i + 1]
            fibonacciArray.append(sum)
//            print(fibonacciArray)
        }
        
        return fibonacciArray
    }
    

    func generateNumbers() -> [Int] {  //
        for j in 0...1000 {
            numbersArray.append(j)
            print(numbersArray)
        }
        return numbersArray
    }
    


    override func viewDidLoad() {
    // Do any additional setup after loading the view, typically from a nib.
        self.fibonacciArray=generateFibonacciNum()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000

    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath)
        print(cell)
        
        if fibonacciArray.contains(indexPath.item) {
            cell.backgroundColor = UIColor.yellow
        } else {
            cell.backgroundColor = UIColor.black
        }
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "numberDetailViewShown" {
            let dest = segue.destination as! HellaDetailViewController
            let selectedNumber = self.cellViewOutlet.indexPathsForSelectedItems
        
            if let selectedNumber = selectedNumber {
        
                dest.numberDetail = String(selectedNumber[0].item)
                print(selectedNumber)
            }
            
        }
        
    }
    
    
}

