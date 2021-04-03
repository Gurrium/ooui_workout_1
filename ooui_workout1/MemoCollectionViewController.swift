//
//  MemoCollectionViewController.swift
//  ooui_workout1
//
//  Created by gurrium on 2021/04/03.
//

import UIKit

private let cellIdentifier = "MemoCollectionViewCell"

final class MemoCollectionViewController: UICollectionViewController {
    struct Memo {
        var title: String = ""
        var content: String = ""
    }
    private let memoList: [Memo] = [
        .init(title: "登山用品", content: "くつ，水筒，防寒着，ザック"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤"),
        .init(title: "買い物リスト", content: "キャベツ，肉，牛乳，インスタントコーヒー，ラップ，豆腐，白菜，豆板醤")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        
        collectionView.collectionViewLayout  = createLayout()
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                             heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
      
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .estimated(69))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                         subitems: [item])
      
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: 12, leading: 12, bottom: 12, trailing: 12)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}

extension MemoCollectionViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memoList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? MemoCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let memo = memoList[indexPath.item]
        cell.render(title: memo.title, content: memo.content)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TODO: impl
        print("\(memoList[indexPath.item].title) is tapped")
    }
}
