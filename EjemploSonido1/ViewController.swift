//
//  ViewController.swift
//  EjemploSonido1
//
//  Created by Alejandro on 21/01/18.
//  Copyright © 2018 Alejandro. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func SSRandomIntBetween(_ a: Int32, _ b: Int32) -> Int32
    {
       var d = Int32()
        d = Int32(arc4random_uniform(4))
        return d
    }
    @IBAction func aleatorio() {
        let random = SSRandomIntBetween(0, 4)
        print(random)
        switch random {
        case 0:
            nombreCancion.text = "Million Reasons"
            nombreArtista.text = "Lady Gaga"
            fotoCancion.image = UIImage(named: "joanne")
            guard let sonidoURLMR  = Bundle.main.url(forResource: "Million reasons", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorMillionReasons = try AVAudioPlayer(contentsOf: sonidoURLMR, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorMillionReasons.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        case 1:
            nombreCancion.text = "Call it what you want"
            nombreArtista.text = "Taylor Swift"
            fotoCancion.image = UIImage(named: "reputation")
            guard let sonidoURLCIWYW = Bundle.main.url(forResource: "Call it what you want", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorCallItWhatYouWant = try AVAudioPlayer(contentsOf: sonidoURLCIWYW, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorCallItWhatYouWant.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        case 2:
            nombreCancion.text = "End Game"
            nombreArtista.text = "Taylor Swift"
            fotoCancion.image = UIImage(named: "reputation")
            guard let sonidoURLEG  = Bundle.main.url(forResource: "End Game", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                   reproductorEndGame = try AVAudioPlayer(contentsOf: sonidoURLEG, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorEndGame.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        case 3:
            nombreCancion.text = "Perfect Places"
            nombreArtista.text = "Lorde"
            fotoCancion.image = UIImage(named: "melodrama")
            guard let sonidoURLPP  = Bundle.main.url(forResource: "Perferct places", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorPerfectPlaces = try AVAudioPlayer(contentsOf: sonidoURLPP, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    
                    reproductorPerfectPlaces.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        case 4:
            nombreCancion.text = "Homemade Dynamite"
            nombreArtista.text = "Lorde"
            fotoCancion.image = UIImage(named: "melodrama")
            guard let sonidoURLHD  = Bundle.main.url(forResource: "Homemade dynamite", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorHomeDynamite = try AVAudioPlayer(contentsOf: sonidoURLHD, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorHomeDynamite.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
            
            
        default:
            print("error")
        }
       
    }
    
    @IBAction func volume(_ sender: UISlider) {
        if(nombreCancion.text == "Call it what you want")
        {
        reproductorCallItWhatYouWant.volume = sender.value
        }
        else if(nombreCancion.text == "Perfect Places")
        {
        reproductorPerfectPlaces.volume = sender.value
        }
        else if(nombreCancion.text == "Million Reasons")
        {
        reproductorMillionReasons.volume = sender.value
        }
        else if(nombreCancion.text == "Homemade Dynamite")
        {
        reproductorHomeDynamite.volume = sender.value
        }
        else if(nombreCancion.text == "End Game")
        {
        reproductorEndGame.volume = sender.value
        }
    }
    
    
    private var reproductorCallItWhatYouWant : AVAudioPlayer!
        private var reproductorEndGame : AVAudioPlayer!
        private var reproductorHomeDynamite : AVAudioPlayer!
        private var reproductorPerfectPlaces : AVAudioPlayer!
        private var reproductorMillionReasons : AVAudioPlayer!
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var fotoCancion: UIImageView!
    
    @IBOutlet weak var nombreArtista: UILabel!
    @IBOutlet weak var nombreCancion: UILabel!
    var pickerData: [String] = [String]()
  
    let sizeComponent = 0
    let toppingComponent = 1
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
 
    func pickerView(_
        pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int
        ) -> String? {
        return pickerData[row]
    }
    
    
    func pickerView(
        _ pickerView: UIPickerView,
        didSelectRow row: Int,
        inComponent component: Int)
    {
        updateCancion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        pickerData =
            ["Million Reasons","Perfect Places","Call it what you want","Homemade Dynamite", "End Game"]
        updateCancion()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateCancion(){
        let cancion = pickerData[picker.selectedRow(inComponent: sizeComponent)].description
        nombreCancion.text = cancion as String
        
        if (nombreCancion.text == "Million Reasons")
        {
            nombreArtista.text = "Lady Gaga"
            fotoCancion.image = UIImage(named: "joanne")
        }
        else if (nombreCancion.text == "Perfect Places")
        {
            nombreArtista.text = "Lorde"
             fotoCancion.image = UIImage(named: "melodrama")
     
        }
        else if (nombreCancion.text == "Call it what you want")
        {
            nombreArtista.text = "Taylor Swift"
            fotoCancion.image = UIImage(named: "reputation")
       
        }
        else if (nombreCancion.text == "End Game")
        {
            nombreArtista.text = "Taylor Swift"
             fotoCancion.image = UIImage(named: "reputation")
        
        }
        else if (nombreCancion.text == "Homemade Dynamite")
        {
            nombreArtista.text = "Lorde"
             fotoCancion.image = UIImage(named: "melodrama")
    
        }
        
        if(nombreCancion.text == "Call it what you want")
        {
            guard let sonidoURLCIWYW = Bundle.main.url(forResource: "Call it what you want", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorCallItWhatYouWant = try AVAudioPlayer(contentsOf: sonidoURLCIWYW, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorCallItWhatYouWant.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }
        if(nombreCancion.text == "End Game")
        {
            guard let sonidoURLEG  = Bundle.main.url(forResource: "End Game", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorEndGame = try AVAudioPlayer(contentsOf: sonidoURLEG, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorEndGame.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }
        if(nombreCancion.text == "Million Reasons")
        {
            guard let sonidoURLMR  = Bundle.main.url(forResource: "Million reasons", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorMillionReasons = try AVAudioPlayer(contentsOf: sonidoURLMR, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorMillionReasons.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }
        if(nombreCancion.text == "Perfect Places")
        {
            guard let sonidoURLPP  = Bundle.main.url(forResource: "Perferct places", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorPerfectPlaces = try AVAudioPlayer(contentsOf: sonidoURLPP, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    
                    reproductorPerfectPlaces.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }
        if(nombreCancion.text == "Homemade Dynamite")
        {
            guard let sonidoURLHD  = Bundle.main.url(forResource: "Homemade dynamite", withExtension: "mp3") else { return }
            do{
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    reproductorHomeDynamite = try AVAudioPlayer(contentsOf: sonidoURLHD, fileTypeHint: AVFileType.mp3.rawValue)
                    if(reproductorMillionReasons != nil)
                    {
                        reproductorMillionReasons.stop()
                    }
                    if(reproductorPerfectPlaces != nil)
                    {
                        reproductorPerfectPlaces.stop()
                    }
                    if(reproductorEndGame != nil)
                    {
                        reproductorEndGame.stop()
                    }
                    if(reproductorHomeDynamite != nil)
                    {
                        reproductorHomeDynamite.stop()
                    }
                    if(reproductorCallItWhatYouWant != nil)
                    {
                        reproductorCallItWhatYouWant.stop()
                    }
                    reproductorHomeDynamite.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
            
            
        }
        
    }
    
    @IBAction func play() {
       if(nombreCancion.text == "Call it what you want")
       {
        if(reproductorMillionReasons != nil)
        {
            reproductorMillionReasons.stop()
        }
        if(reproductorPerfectPlaces != nil)
        {
            reproductorPerfectPlaces.stop()
        }
        if(reproductorEndGame != nil)
        {
            reproductorEndGame.stop()
        }
        if(reproductorHomeDynamite != nil)
        {
            reproductorHomeDynamite.stop()
        }
        if(reproductorCallItWhatYouWant != nil)
        {
            reproductorCallItWhatYouWant.stop()
        }
            reproductorCallItWhatYouWant.play()
        }
        if(nombreCancion.text == "Million Reasons")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }

            reproductorMillionReasons.play()
        }
        if(nombreCancion.text == "Perfect Places")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }

        reproductorPerfectPlaces.play()
        }
        if(nombreCancion.text == "End Game")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }

            reproductorEndGame.play()
        }
        if(nombreCancion.text == "Homemade Dynamite")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }

            reproductorHomeDynamite.play()
        }
    }
    
    @IBAction func pause() {
        if(nombreCancion.text == "Call it what you want")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorCallItWhatYouWant.pause()
        }
        if(nombreCancion.text == "Million Reasons")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorMillionReasons.pause()
        }
        if(nombreCancion.text == "Perfect Places")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorPerfectPlaces.pause()
        }
        if(nombreCancion.text == "End Game")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorEndGame.pause()
        }
        if(nombreCancion.text == "Homemade Dynamite")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorHomeDynamite.pause()
        }
    }
    
    @IBAction func stop() {
        if(nombreCancion.text == "Call it what you want")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorCallItWhatYouWant.stop()
            reproductorCallItWhatYouWant.currentTime = 0
        }
        if(nombreCancion.text == "Million Reasons")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorMillionReasons.stop()
            reproductorMillionReasons.currentTime = 0
        }
        if(nombreCancion.text == "Perfect Places")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorPerfectPlaces.stop()
            reproductorPerfectPlaces.currentTime = 0
        }
        if(nombreCancion.text == "End Game")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorEndGame.stop()
            reproductorEndGame.currentTime = 0
        }
        if(nombreCancion.text == "Homemade Dynamite")
        {
            if(reproductorMillionReasons != nil)
            {
                reproductorMillionReasons.stop()
            }
            if(reproductorPerfectPlaces != nil)
            {
                reproductorPerfectPlaces.stop()
            }
            if(reproductorEndGame != nil)
            {
                reproductorEndGame.stop()
            }
            if(reproductorHomeDynamite != nil)
            {
                reproductorHomeDynamite.stop()
            }
            if(reproductorCallItWhatYouWant != nil)
            {
                reproductorCallItWhatYouWant.stop()
            }
            reproductorHomeDynamite.stop()
            reproductorHomeDynamite.currentTime = 0
        }
    }
    

}

