//
//  PresentView.swift
//  first-round
//
//  Created by Oktavia Citra on 03/03/22.
//

import SwiftUI

struct PresentView: View {
    var body: some View {
        ScrollView {
            VStack {
                RoundedImageView(url: "https://picsum.photos/200")
                
                RowView()
            }
        }
    }
}

struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView()
    }
}

struct BackgroundClearView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
