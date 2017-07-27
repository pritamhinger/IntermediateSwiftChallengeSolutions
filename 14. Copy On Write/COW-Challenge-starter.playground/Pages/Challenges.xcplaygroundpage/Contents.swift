// Copyright (c) 2017 Razeware LLC
// See Copyright Notice page for details about the license.

import UIKit

// The other use case for implementing COW is to reduce reference counting
// overhead.  The following InventoryItem struct has value semantics
// because the all of the internal components have value semantics.
// However, everytime an object is copied you get 6 reference counts
// Use COW so that there is only one reference count bump when an 
// InventoryItem is copied.

//struct InventoryItem {
//  var name: String
//  var barcode: String
//  var cost: String
//  var color: UIColor
//  var images: [UIImage]
//  var comment: String
//}


struct InventoryItem{
    final class Storage {
        var name: String
        var barcode: String
        var cost: String
        var color: UIColor
        var images: [UIImage]
        var comment: String
        
        init(name: String, barcode: String, cost: String, color: UIColor, images: [UIImage], comment: String) {
            self.name = name
            self.barcode = barcode
            self.cost = cost
            self.color = color
            self.images = images
            self.comment = comment
        }
        
        func copy() -> Storage {
            return Storage(name: name, barcode: barcode, cost: cost, color: color, images: images, comment: comment)
        }
    }
    
    
    fileprivate var _storage: Storage
    
    fileprivate var _mutatingStorage: Storage{
        mutating get{
            if !isKnownUniquelyReferenced(&_storage){
                //_storage = _storage.c
            }
            
            return _storage
        }
    }
    
    var name: String{
        get{
            return _storage.name
        }
        set{
            _mutatingStorage.name = newValue
        }
    }
    
    var barcode: String{
        get{
            return _storage.barcode
        }
        set{
            _mutatingStorage.barcode = newValue
        }
    }
    
    var cost: String{
        get{
            return _storage.cost
        }
        set{
            _mutatingStorage.cost = newValue
        }
    }
    
    var color: UIColor{
        get{
            return _storage.color
        }
        set{
            _mutatingStorage.color = newValue
        }
    }
    
    var images: [UIImage]{
        get{
            return _storage.images
        }
        set{
            _mutatingStorage.images = newValue
        }
    }
    
    var comment: String{
        get{
            return _storage.comment
        }
        set{
            _storage.comment = newValue
        }
    }
}