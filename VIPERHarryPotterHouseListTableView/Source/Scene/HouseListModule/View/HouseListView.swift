//
//  ViewController.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import UIKit

protocol HouseListViewProtocol: AnyObject {
    func setImageHouseButton(with slytherinImage: String,
                             _ gryffindorImage: String,
                             _ hufflepuffImage: String,
                             _ ravenclawImage: String)
}

final class HouseListView: UIViewController, HouseListViewProtocol {
    
    //MARK: - Reference
    
    var presenter: HouseListPresenterProtocol!
    let configurator: HouseListConfiguratorProtocol = HouseListConfigurator()
    
    //MARK: - Views
    
    private lazy var slytherinButton = createHouseButton()
    private lazy var gryffindorButton = createHouseButton()
    private lazy var huffleuffButton = createHouseButton()
    private lazy var ravenclawButton = createHouseButton()

    
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
    
    //MARK: - Identifier for segue
    
    let selfToStudentSlytherinView = "HouseToSlytherinList"
    let selfToStudentGryffindorView = "HouseToGryffindorList"
    let selfToStudentHufflepufView = "HouseToHufflepuffList"
    let selfToStudentRavenclawView = "HouseToRavenclawList"
    
    //MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(slytherinButton)
        view.addSubview(gryffindorButton)
        view.addSubview(huffleuffButton)
        view.addSubview(ravenclawButton)
    }
    
    private func setupLayout() {
        slytherinButton.translatesAutoresizingMaskIntoConstraints = false
        slytherinButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                             constant: 100).isActive = true
        slytherinButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor,
                                              constant: 40).isActive = true
        slytherinButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35).isActive = true
        slytherinButton.heightAnchor.constraint(equalTo: slytherinButton.widthAnchor).isActive = true
        
        
        gryffindorButton.translatesAutoresizingMaskIntoConstraints = false
        gryffindorButton.topAnchor.constraint(equalTo: slytherinButton.topAnchor).isActive = true
        gryffindorButton.leftAnchor.constraint(equalTo: slytherinButton.rightAnchor,
                                              constant: 35).isActive = true
        gryffindorButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,
                                                constant: -40).isActive = true
        gryffindorButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35).isActive = true
        gryffindorButton.heightAnchor.constraint(equalTo: gryffindorButton.widthAnchor).isActive = true
        
        
        huffleuffButton.translatesAutoresizingMaskIntoConstraints = false
        huffleuffButton.topAnchor.constraint(equalTo: slytherinButton.bottomAnchor,
                                             constant: 40).isActive = true
        huffleuffButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor,
                                              constant: 40).isActive = true
        huffleuffButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35).isActive = true
        huffleuffButton.heightAnchor.constraint(equalTo: huffleuffButton.widthAnchor).isActive = true
        
        
        ravenclawButton.translatesAutoresizingMaskIntoConstraints = false
        ravenclawButton.topAnchor.constraint(equalTo: gryffindorButton.bottomAnchor,
                                             constant: 40).isActive = true
        ravenclawButton.leftAnchor.constraint(equalTo: huffleuffButton.rightAnchor,
                                              constant: 35).isActive = true
        ravenclawButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,
                                                constant: -40).isActive = true
        ravenclawButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35).isActive = true
        ravenclawButton.heightAnchor.constraint(equalTo: ravenclawButton.widthAnchor).isActive = true
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupNavigationController() {
        navigationItem.title = "Select a house"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .white
        appearance.shadowColor = .white
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    //MARK: - Functions
    
    private func createHouseButton() -> UIButton {
        let button = UIButton()
        
        button.addTarget(self, action: #selector(houseButtonTapped(_:)), for: .touchUpInside)
        
        return button
    }
    
    //MARK: - HouseListViewProtocol method
    
    func setImageHouseButton(with slytherinImage: String,
                             _ gryffindorImage: String,
                             _ hufflepuffImage: String,
                             _ ravenclawImage: String) {
        slytherinButton.setImage(UIImage(named: slytherinImage), for: .normal)
        gryffindorButton.setImage(UIImage(named: gryffindorImage), for: .normal)
        huffleuffButton.setImage(UIImage(named: hufflepuffImage), for: .normal)
        ravenclawButton.setImage(UIImage(named: ravenclawImage), for: .normal)
        
        print("Данные для конфигурации пришли во View")
    }
    
    //MARK: - Buttons action
    
    @objc private func houseButtonTapped(_ sender: UIButton) {
        
        switch sender {
        case slytherinButton:
            presenter.slytherinButtonDidTap()
            print("View говорит Presenter'у что пользователь нажал на кнопку Slytherin")
        case gryffindorButton:
            presenter.gryffindorButtonDidTap()
            print("View говорит Presenter'у что пользователь нажал на кнопку Gryffindor")
        case huffleuffButton:
            presenter.hufflepufButtonDidTap()
            print("View говорит Presenter'у что пользователь нажал на кнопку Hufflepuff")
        case ravenclawButton:
            presenter.ravenclawButtonDidTap()
            print("View говорит Presenter'у что Пользователь нажал на кнопку Ravenclaw")
        default:
            break
        }
    }
    
    deinit {
        print("HouseListView освободился из памяти")
    }

}

