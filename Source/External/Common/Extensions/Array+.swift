//
//  Array+.swift
//  nextv
//
//  Created by Ivan Goremykin on 24.02.17.
//  Copyright © 2017 Tachos. All rights reserved.
//

import Foundation

extension Array
{
    static func excludeNils(_ array: [Element?]) -> [Element]
    {
        return array
                .filter { $0 != nil }
                .map { $0! }
    }
}

extension Array
{
    var tail: Array
    {
        return Array(self.dropFirst())
    }
}

extension Array
{
    func shuffledCopy() -> Array
    {
        var selfCopy = self
        selfCopy.shuffle()

        return selfCopy
    }

    mutating func shuffle()
    {
        for _ in 0..<count
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}

extension Array where Element == String
{
    func toCommaSeparated() -> String
    {
        return self.joined(separator: ",")
    }
}

func ==<T: Equatable>(lhs: [T]?, rhs: [T]?) -> Bool
{
    switch (lhs, rhs)
    {
    case (.some(let lhs), .some(let rhs)):
        return lhs == rhs
        
    case (.none, .none):
        return true
        
    default:
        return false
    }
}

extension Array
{
    @discardableResult
    mutating func removeFirst(where predicate: (Element) -> Bool) -> Bool
    {
        if let itemIndex = self.firstIndex(where: predicate)
        {
            self.remove(at: itemIndex)
            return true
        }
        return false
    }
}

extension Array
{
    var lastIndex: Int?
    {
        if count == 0
        {
            return nil
        }

        return count - 1
    }

    mutating func makeElementFirstMaintainingOrder(initialPosition: Int)
    {
        let firstPart = self.suffix(from: initialPosition)
        let secondPart = self.prefix(upTo: initialPosition)

        self = Array(firstPart) + Array(secondPart)
    }

    var loopedInterleavingPairs: [(Element, Element)]
    {
        if count < 2
        {
            return []
        }

        var pairs: [(Element, Element)] = []
        let rangeEnd = count - 2

        for index in 0...rangeEnd
        {
            pairs.append((self[index], self[index + 1]))
        }

        pairs.append((self[count - 1], self[0]))

        return pairs
    }

    func getPreviousLoopedElement(for index: Int) -> Element
    {
        return self[getPreviousLoopedIndex(for: index)]
    }

    func getNextLoopedElement(for index: Int) -> Element
    {
        return self[getNextLoopedIndex(for: index)]
    }

    func getPreviousLoopedIndex(for index: Int) -> Int
    {
        emitErrorIfIndexOutOfRange(index)

        if count == 0 || count == 1
        {
            return 0
        }

        return (index - 1) >= 0 ? (index - 1) : (count - 1)
    }

    func getNextLoopedIndex(for index: Int) -> Int
    {
        emitErrorIfIndexOutOfRange(index)

        if count == 0 || count == 1
        {
            return 0
        }

        return (index + 1) < count ? (index + 1) : 0
    }

    private func emitErrorIfIndexOutOfRange(_ index: Int)
    {
        if !(0..<count).contains(index)
        {
            fatalError("index out of range")
        }
    }
}

extension Array
{
    public func isValidIndex(_ index: Int) -> Bool
    {
        return index >= 0 && index < self.endIndex
    }
}

extension Array
{
    public subscript(safeIndex index: Int) -> Element?
    {
        if index >= 0, index < self.endIndex
        {
            return self[index]
        }
        
        return nil
    }
}

extension Array
{
    func chunked(into size: Int) -> [[Element]]
    {
        return stride(from: 0, to: count, by: size).map
        {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
