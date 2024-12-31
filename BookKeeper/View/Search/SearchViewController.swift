//
//  SearchViewController.swift
//  BookKeeper
//
//  Created by Eden on 12/27/24.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    // MARK: - Properties
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "책 제목을 검색하세요."
        searchBar.searchBarStyle = .minimal
        return searchBar
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Setup
    private func setupUI() {
        view.backgroundColor = .white
        title = "검색"
        
        view.addSubview(searchBar)
        searchBar.delegate = self
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
            return true
        }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text, !searchText.isEmpty else { return }
        searchBar.resignFirstResponder()
    }
}

