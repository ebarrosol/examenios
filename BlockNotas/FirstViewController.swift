//
//  FirstViewController.swift
//  BlockNotas
//
//  Created by Efren Alejandro Barroso Llanes on 13/06/15.
//  Copyright (c) 2015 EBL. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet var tablanotas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_tableView: UITableView, numberOfRowsInSection _section: Int) -> Int
    {
        return adminnot.notas.count
    }
    
    func tableView(_tableView: UITableView, cellForRowAtIndexPath _indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Nueva Celda")
        
        cell.textLabel?.text = adminnot.notas[_indexPath.row].nombre
        cell.detailTextLabel?.text = adminnot.notas[_indexPath.row].descrip
        
        return cell
    }
    
    func tableView(_tableView: UITableView, commitEditingStyle _editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath _indexPath: NSIndexPath)
    {
        if(_editingStyle == UITableViewCellEditingStyle.Delete)
        {
            adminnot.notas.removeAtIndex(_indexPath.row)
            tablanotas.reloadData()
        }
    }
    
    override func viewWillAppear(_animated: Bool)
    {
        tablanotas.reloadData()
    }

}

