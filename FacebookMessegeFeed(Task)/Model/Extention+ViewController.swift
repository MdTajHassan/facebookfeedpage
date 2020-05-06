//
//  Extention+ViewController.swift
//  FacebookMessegeFeed(Task)
//
//  Created by mehtab alam on 06/05/2020.
//  Copyright © 2020 taj hassan. All rights reserved.
//

import Foundation
import UIKit
extension ViewController
{
    //FUNCTION FOR GETTING DATA FROM SERVER
    func getDataFromServer()
    {
        var urlRequest = URLRequest(url: URL(string: "https://api.androidhive.info/feed/feed.json")!)
        
        urlRequest.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            if(error == nil)
            {
                do
                {
                    let decoder = try JSONDecoder().decode(newModel.self, from: data!)
                    
                    self.FBModelObject = decoder.feed
                    
                    print(self.FBModelObject)
                    print(self.FBModelObject.count)
                    
                    DispatchQueue.main.async
                        {
                            self.tableView.reloadData()
                    }
                }
                catch
                {
                    print("Unable to convert data")
                }
            }
            else
            {
                print(error?.localizedDescription as Any)
            }
        }.resume()
    }
    
    
    //TABLEVIEW DELEGATE DATASOURCE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return FBModelObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.profileName.text = FBModelObject[indexPath.row].name
        cell.status.text = FBModelObject[indexPath.row].status
        
        cell.profileImage.kf.setImage(with: URL(string: FBModelObject[indexPath.row].profilePic))
        cell.statusImage.kf.setImage(with: URL(string: FBModelObject[indexPath.row].image ?? "nil"))
        
        return cell
    }
    
}
