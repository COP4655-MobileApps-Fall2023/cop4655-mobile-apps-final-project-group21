//
//  Task.swift
//
//  Created by Marco Rojas on 11/18/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "🌟 Item #1: The Pinecone 🌟",
                 description: "Step into the great outdoors and embark on a pine-scented adventure! The first item on your list is none other than the humble pinecone. These prickly delights can be found nestled among the trees, lurking in parks, or even playing hide-and-seek in your backyard. Will you be the pinecone conqueror?"),
            Task(title: "🦆 Item #2: The Rubber Duck 🦆",
                 description: "Quack-tastic! Your next challenge is to track down the rubber duckie. These little bath-time buddies might have slipped away from their tubs, and it's up to you to find them. Keep your eyes peeled in unexpected places around your home, as these ducks are known for their knack for hiding in plain sight."),
            Task(title: "🍀 Item #3: The Four-Leaf Clover 🍀",
                 description: "Feeling lucky? Your final mission is to seek out the elusive four-leaf clover. These rare, magical plants are said to bring good fortune to those who discover them. Will you be the one to uncover this emerald treasure in the vast sea of three-leaf impostors? It's time to put your luck to the test!")
        ]
    }
}
