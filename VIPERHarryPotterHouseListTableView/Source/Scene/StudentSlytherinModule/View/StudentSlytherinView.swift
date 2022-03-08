//
//  StudentSlytherinView.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import UIKit

protocol StudentSlytherinViewProtocol: AnyObject {
    func setupDataForTableView(with data: [StudentSlytherin])
}

final class StudentSlytherinView: UIViewController, StudentSlytherinViewProtocol {
    
    //MARK: - Reference
    
    var presenter: StudentSlytherinPresenterProtocol!
    let configurator: StudentSlytherinConfiguratorProtocol = StudentSlytherinConfigurator()
    
    //MARK: - Views
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "StudentSlytherinCell")
        
        return tableView
    }()
    
    //MARK: - LifeCycle
    
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
        navigationItem.title = "Slytherin students"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemGreen
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    //Model TableView
    var model = [StudentSlytherin]()
    
    //MARK: - StudentSlytherinViewProtocol method
    
    func setupDataForTableView(with data: [StudentSlytherin]) {
        self.model = data
        print("Данные для конфигурации пришли во View")
    }
    
    deinit {
        print("StudentSlytherinView освободился из памяти")
    }
}

//MARK: - UITableViewDataSource

extension StudentSlytherinView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentSlytherinCell", for: indexPath)
        cell.textLabel?.text = model[indexPath.row].name
        return cell
    }
}

//MARK: - UITableViewDelegate

extension StudentSlytherinView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


