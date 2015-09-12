//
//  ServiceProvider.swift
//  TopShelfExtension
//
//  Created by Orta Therox on 12/09/2015.
//  Copyright © 2015 Artsy. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    var topShelfStyle: TVTopShelfContentStyle {
        return .Sectioned
    }

    var topShelfItems: [TVContentItem] {
        let wrapperID = TVContentIdentifier(identifier: "new-artworks", container: nil)!
        let wrapperItem = TVContentItem(contentIdentifier: wrapperID)!
        wrapperItem.title = "New Artworks"
        
        let wrapperID2 = TVContentIdentifier(identifier: "popular-artworks", container: nil)!
        let wrapperItem2 = TVContentItem(contentIdentifier: wrapperID2)!
        wrapperItem2.title = "Popular Artworks"
        
        let identifier = TVContentIdentifier(identifier: "starrynight", container: wrapperID)!
        let contentItem = TVContentItem(contentIdentifier: identifier )!
        contentItem.imageShape = .Poster
        contentItem.imageURL = NSURL(string: "http://7-themes.com/data_images/out/44/6920309-famous-artwork-wallpapers.jpg")
        contentItem.title = "Starry Night, Van Gogh"

        
        let identifier2 = TVContentIdentifier(identifier: "oleander", container: wrapperID2)!
        let contentItem2 = TVContentItem(contentIdentifier: identifier2 )!
        contentItem2.imageShape = .Poster
        contentItem2.imageURL = NSURL(string: "http://www.metmuseum.org/toah/images/hb/hb_62.24.jpg")
        contentItem2.title = "Oleanders, Van Gogh"
        
        let identifier3 = TVContentIdentifier(identifier: "selfportrait", container: wrapperID)!
        let contentItem3 = TVContentItem(contentIdentifier: identifier3 )!
        contentItem3.imageShape = .Poster
        contentItem3.imageURL = NSURL(string: "http://www.metmuseum.org/toah/images/hb/hb_67.187.70a.jpg")
        contentItem3.title = "Self-Portrait, Van Gogh"
        
        wrapperItem.topShelfItems = [contentItem, contentItem3]
        wrapperItem2.topShelfItems = [contentItem2]
        return [wrapperItem, wrapperItem2]
    }

}

