//
//  SearchBarView.swift
//  BookKeeper
//
//  Created by Eden on 12/31/24.
//

import UIKit

class SearchBarView: UISearchBar {
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSearchBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSearchBar() {
        placeholder = "책 제목을 검색하세요."
        searchBarStyle = .minimal
        showsCancelButton = true
    }
}
