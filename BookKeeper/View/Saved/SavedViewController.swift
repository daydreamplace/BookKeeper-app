//
//  SavedViewController.swift
//  BookKeeper
//
//  Created by Eden on 12/27/24.
//

import UIKit

class SavedViewController: UIViewController {
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Setup
    private func setupUI() {
        view.backgroundColor = .white
        title = "책장"
    }
}
