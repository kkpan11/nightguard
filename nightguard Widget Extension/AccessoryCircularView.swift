//
//  AccessoryCircularView.swift
//  nightguard Widget Extension
//
//  Created by Dirk Hermanns on 07.04.23.
//  Copyright © 2023 private. All rights reserved.
//

import Foundation
import SwiftUI
import WidgetKit

struct AccessoryCircularView : View {
    
    var entry: NightscoutDataEntry
    
    var body: some View {
        ZStack {
            AccessoryWidgetBackground()
            VStack {
                Text("\(calculateAgeInMinutes(fromDouble: entry.lastBGValues.first?.timestamp ?? Date.now.timeIntervalSinceNow-3600))m")
                Text("\(entry.lastBGValues.first?.value ?? "??")")
                    .foregroundColor(
                        Color.cyan)
                Text("\(entry.lastBGValues.first?.delta ?? "?")")
                    .foregroundColor(
                        Color(UIColorChanger.getDeltaLabelColor(Float(entry.lastBGValues.first?.delta ?? "99") ?? 99.0)))
                    .widgetAccentable(true)
                    .unredacted()
            }
        }
    }
}


