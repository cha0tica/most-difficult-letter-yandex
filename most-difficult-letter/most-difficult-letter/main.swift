//
//  main.swift
//  tests
//
//  Created by Agata on 21.06.2022.
//

import Foundation

print("Ввод данных:")
let n = Int(readLine()!)!
let s = readLine()!.compactMap { Character(extendedGraphemeClusterLiteral: $0) }
let a = readLine()!.split(separator: " ").map(String.init).compactMap { Int($0) }

var maxKey = a[0]
var maxChar = s[0]

for i in 1..<n {
    if (a[i] - a[i - 1]) >= maxKey {
        maxKey = a[i] - a[i - 1]
        maxChar = s[i]
    }
}
print(maxChar)
