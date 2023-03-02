//
//  ScrollViewDeluxe.swift
//  ScrollViewDeluxe
//
//  Created by Christian Hoock on 02.03.23.
//

import SwiftUI
import AwesomeSwaggary

struct ScrollViewDeluxe: View {
  @State private var currentFrame: CGRect = .zero
  @State private var currentContentFrame: CGRect = .zero
  
  var body: some View {
    VStack(spacing: 0) {
      GeometryReader { _ in // necessary for scrollview to not get pushed off screen when maxHeight is set. But why?
        ScrollView() {
          Text("Bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla")
            .frame(maxWidth: .infinity)
            .background(.green)
            .frameChanged { rect in
              currentContentFrame = rect
            }
        }
        .padding(.top, 1) // this will prevent the scrollview to extend under the safe area
        .frame(minHeight: 0, maxHeight: currentContentFrame.height)
        .scrollDisabled(currentContentFrame.height <= currentFrame.height )
        .background(.yellow)
        .frameChanged { rect in
          currentFrame = rect
        }
      }
      
      Rectangle()
        .fill(.pink)
        .frame(minHeight: 100, maxHeight: 100)
    }
  }
}

struct ScrollViewDeluxe_Previews: PreviewProvider {
  static var previews: some View {
    ScrollViewDeluxe()
  }
}
