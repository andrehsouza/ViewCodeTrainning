//
//  HeaderViewSpec.swift
//  ViewCodeTrainningTests
//
//  Created by andre.luiz.de.souza on 28/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import Foundation
import Quick
import Nimble

import Nimble_Snapshots
import UIKit

@testable import ViewCodeTrainning

class HeaderViewSpec: QuickSpec {

    override func spec() {
        
        describe("A 'HeaderView'") {
            
            context("UI") {
                it("should have the expected look and feel") {
                    let frame = CGRect(x: 20, y: 160, width: 374, height: 100)
                    let sut = HeaderView(frame: frame)
                    expect(sut) == snapshot("HeaderView") //recordSnapshot("HeaderView")
                }
            }
            
        }
        
    }
    
}
