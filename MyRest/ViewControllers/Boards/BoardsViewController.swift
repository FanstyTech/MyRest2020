//
//  BoardsViewController.swift
//  MyRest
//
//  Created by ashammad99 on 11/30/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit
import FSPagerView
class BoardsViewController: UIViewController {

    @IBOutlet weak var pagerView: FSPagerView!{
        didSet {
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
            self.pagerView.itemSize = FSPagerView.automaticSize
        }
    }
    @IBOutlet weak var pageControl: FSPageControl!{
        didSet {
            self.pageControl.numberOfPages = self.imageNames.count
            self.pageControl.contentHorizontalAlignment = .center
            //    self.pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
    }
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    var imageNames: [String] = ["bgBoard1","bgBoard2","bgBoard3"]
    
    var boardsDescription: [Board] = [Board.board1,Board.board2,Board.board3]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()

        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }


}
extension BoardsViewController {
    func setupView() {
        pagerView.delegate = self
        pagerView.dataSource = self
        pagerView.isInfinite = true
        pagerView.automaticSlidingInterval = 1
        pagerView.decelerationDistance = 1
        pagerView.transformer = FSPagerViewTransformer (type: .linear)
        pageControl.setImage("icSelected".image_, for: .selected)
        pageControl.setImage("icNonSelected".image_, for: .normal)
        let transform = CGAffineTransform(scaleX: 1, y: 1)
        self.pagerView.itemSize = self.pagerView.frame.size.applying(transform)
        self.pagerView.decelerationDistance = FSPagerView.automaticDistance
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
extension BoardsViewController: FSPagerViewDelegate, FSPagerViewDataSource {
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return self.imageNames.count
        
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.imageNames[index])
        cell.imageView?.contentMode = .center
        cell.imageView?.clipsToBounds = true
        lblTitle.text = boardsDescription[index].title
        lblDescription.text = boardsDescription[index].Description
        
        return cell
    }
    
    // MARK:- FSPagerView Delegate
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        pagerView.deselectItem(at: index, animated: true)
        pagerView.scrollToItem(at: index, animated: true)
    }
    
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        self.pageControl.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        self.pageControl.currentPage = pagerView.currentIndex
    }
    
    
    
    
}
