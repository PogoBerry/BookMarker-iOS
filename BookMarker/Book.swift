//
//  Book.swift
//  BookMarker
//
//  Created by Ryan Wheeler on 7/25/19.
//  Copyright © 2019 Ryan Wheeler. All rights reserved.
//

import UIKit
import os.log

class Book: NSObject, NSCoding
{
    func encode(with aCoder: NSCoder) {
        <#code#>
    }
    
    required init?(coder aDecoder: NSCoder) {
        <#code#>
    }
    
        //MARK: Properties
    
        var title: String
        var author: String
        var pages: Int
        var cover: UIImage?
    
        //MARK: Initialization
        init? (title: String, author: String, pages: Int, cover: UIImage?)
            {
                // The title, author, and pages must not be empty
                
                guard !title.isEmpty && !author.isEmpty && (pages >= 0)
                    else
                        {
                            return nil
                       
                        } // else
        
                self.title  = title
                self.author = author
                self.pages  = pages
                self.cover  = cover
        
            } // init
    
    
    
    
    } // class Book
