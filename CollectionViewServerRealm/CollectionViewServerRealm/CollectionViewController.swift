//
//  CollectionViewController.swift
//  CollectionViewServerRealm
//
//  Created by jungwan jin on 2017. 5. 7..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//
import UIKit
import Alamofire
import RealmSwift

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    let cell = CollectionViewCell()
    let realm = try! Realm()
    let results = try! Realm().objects(DemoObject.self).sorted(byKeyPath: "date")
    var notificationToken: NotificationToken?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        notificationToken = results.addNotificationBlock { [weak self] (changes: RealmCollectionChange) in
            guard (self?.collectionView) != nil else { return }
            switch changes {
            case .initial:
                // Results are now populated and can be accessed without blocking the UI
                self?.collectionView.reloadData()
                break
            case .update(_, let deletions, let insertions, let modifications):
                // Query results have changed, so apply them to the UITableView
                self?.collectionView.performBatchUpdates({
                    self?.collectionView.insertItems(at: insertions.map { IndexPath(row: $0, section: 0) })
                    self?.collectionView.deleteItems(at: deletions.map  { IndexPath(row: $0, section: 0) })
                    self?.collectionView.reloadItems(at: modifications.map  { IndexPath(row: $0, section: 0) })
                }, completion: { _ in })
                break
            case .error(let error):
                // An error occurred while opening the Realm file on the background worker thread
                fatalError("\(error)")
                break
            }
        }
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20 , left: 0, bottom: 10, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collectionView.collectionViewLayout = layout

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return results.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let record = results[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.cellLabel?.text = record.title
        cell.backgroundColor = UIColor.cyan
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let picDimension = self.view.frame.size.width / 4
        return CGSize(width: picDimension, height: picDimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func add() {
        realm.beginWrite()
        realm.create(DemoObject.self, value: [CollectionViewController.randomString(), CollectionViewController.randomDate()])
        try! realm.commitWrite()
    }
    
    class func randomString() -> String {
        return "Title \(arc4random())"
    }
    
    class func randomDate() -> NSDate {
        return NSDate(timeIntervalSince1970: TimeInterval(arc4random()))
    }
    
    @IBAction func addItemButton(_ sender: Any) {
        add()
    }
}

