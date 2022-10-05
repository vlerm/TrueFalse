//
//  ViewController.swift
//  TrueFalse
//
//  Created by Вадим Лавор on 5.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var trueFalse = TrueFalse()
    var answerNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.progress = 0
        updateView()
    }
    
    @IBAction func answerTheQuestionButtonClicked(_ sender: UIButton) {
        let actualAnswer = sender.titleLabel!.text!
        let isUserGotItRight = trueFalse.checkAnswer(actualAnswer)
        if isUserGotItRight {
            trueButton.backgroundColor = UIColor.green
            trueButton.layer.cornerRadius = 10
        } else {
            falseButton.backgroundColor = UIColor.red
            falseButton.layer.cornerRadius = 10
        }
        trueFalse.nextQuestion()
        progressView.progress = trueFalse.getProgress()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateView), userInfo: nil, repeats: false)
    }
    
    @objc func updateView(){
        scoreLabel.text = ("Общий счёт: \(String(trueFalse.getScore())) из \(trueFalse.trueFalseList.count)")
        titleLabel.text = trueFalse.getTitle()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}
