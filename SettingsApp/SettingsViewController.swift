//
//  ViewController.swift
//  SettingsApp
//
//  Created by Varshith Chilamkurthi on 04/06/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingsTable: UITableView!
    
    var settings: [Settings] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        settingsTable.dataSource = self
        settingsTable.delegate = self

        settings = [
            Settings(title: "Screen Time", image: "timer"),
            Settings(title: "Action Button", image: "arrow.uturn.left.circle.badge.ellipsis"),
            Settings(title: "General", image: "gear"),
            Settings(title: "Accessibility", image: "accessibility"),
            Settings(title: "Privacy & Security", image: "hand.raised.fill"),
            Settings(title: "Passwords", image: "key"),
            Settings(title: "Safari", image: "safari.fill"),
            Settings(title: "News", image: "newspaper"),
            Settings(title: "Translate", image: "waveform"),
            Settings(title: "Maps", image: "map"),
            Settings(title: "Shortcuts", image: "square.stack.3d.up.fill"),
            Settings(title: "Health", image: "heart.square"),
            Settings(title: "Siri & Search", image: "sparkle.magnifyingglass"),
            Settings(title: "Photos", image: "photo.on.rectangle.angled")
        ]
        
        settingsTable.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1)
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 3
        } else if section == 2 {
            return 1
        } else {
            return 8
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        let index = { () -> Int in
            if indexPath.section == 0 {
                return indexPath.row
            } else if indexPath.section == 1 {
                return indexPath.row + 2
            } else if indexPath.section == 2 {
                return indexPath.row + 5
            } else {
                return indexPath.row + 6
            }
        }()
        
        cell.rowImage.image = UIImage(systemName: settings[index].image)
        cell.rowLabel.text = settings[index].title

        return cell
    }
}
