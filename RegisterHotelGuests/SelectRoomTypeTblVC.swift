//
//  SelectRoomTypeTblVC.swift
//  RegisterHotelGuests
//
//  Created by Amaan on 2017-12-18.
//  Copyright © 2017 Amaan Khan. All rights reserved.
//

import UIKit

protocol SelectRoomTypeTableViewControllerDelegate {
    func didSelect(roomType: RoomType)
}

class SelectRoomTypeTblVC: UITableViewController {
    
    var delegate: SelectRoomTypeTableViewControllerDelegate?
    var roomType: RoomType? //Hold the currently selected room type. Make it an optional, because it's possible the staff won't have collected the room choice yet.
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RoomType.all.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell", for: indexPath)
        let roomType = RoomType.all[indexPath.row]
    
        cell.textLabel?.text = roomType.name
        cell.detailTextLabel?.text = "$ \(roomType.price)"
        
        // Selected row gets a checkmark
        // TODO: QUESTION - How to turn this into a teranary
        if roomType == self.roomType {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //Deselecting the selected row (removing the gray highlight)
        roomType = RoomType.all[indexPath.row]
        delegate?.didSelect(roomType: roomType!) // Call delegate method when user selects room type
        tableView.reloadData()
    }
    
}

