//
//  ContentView.swift
//  ActivityImageViewExample
//
//  Created by Peter Salz on 08.09.21.
//

import SwiftUI
import PSActivityImageViewController

struct ContentView: View {
    
    let image = UIImage(named: "Image")!
    
    @State
    var activityItem: ActivityImageItem? = nil
    
    var body: some View {
        
        VStack(spacing: 16) {
                
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Button(
                action: {
                    activityItem = ActivityImageItem(image: image)
                },
                label: {
                    Text("Share image")
                }
            )
            .activityImageSheet($activityItem)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
