//
//  StudentRavenclawView.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import UIKit

protocol StudentRavenclawViewProtocol: AnyObject {
    func setupDataForTableView(with data: [StudentRavenclaw])
}

final class StudentRavenclawView: UIViewController, StudentRavenclawViewProtocol {
    
    //MARK: - Reference
    
    var presenter: StudentRavenclawPresenterProtocol!
    let configurator: StudentRavenclawConfiguratorProtocol = StudentRavenclawConfigurator()
    
    //MARK: - Views
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "StudentRavenclawCell")
        
        return tableView
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
        
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationController()
    }
    
    //MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupNavigationController() {
        navigationItem.title = "Ravenclaw students"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemBlue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    //Model TableView
    var model = [StudentRavenclaw]()
    
    //MARK: - StudentRavenclawViewProtocol method
    
    func setupDataForTableView(with data: [StudentRavenclaw]) {
        self.model = data
        print("Данные для конфигурации пришли во View")
    }
    
    deinit {
        print("StudentRavenclawView освободился из памяти")
    }
}

//MARK: - UITableViewDataSource

extension StudentRavenclawView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentRavenclawCell", for: indexPath)
        cell.textLabel?.text = model[indexPath.row].name
        return cell
    }
}

//MARK: - UITableViewDelegate

extension StudentRavenclawView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

