//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by 이재영 on 2023/02/06.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        
            Text("hi there")
                .font(.system(size: 40, weight: .bold, design: .default))
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
