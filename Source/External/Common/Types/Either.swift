// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK:- Either2
enum Either2<Item0, Item1>
{
    case item0(Item0)
    case item1(Item1)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }
}

// MARK: Equatable
extension Either2: Equatable where Item0: Equatable, Item1: Equatable
{
    static func ==(left: Either2, right: Either2) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either3
enum Either3<Item0, Item1, Item2>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }
}

// MARK: Equatable
extension Either3: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable
{
    static func ==(left: Either3, right: Either3) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either4
enum Either4<Item0, Item1, Item2, Item3>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }
}

// MARK: Equatable
extension Either4: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable
{
    static func ==(left: Either4, right: Either4) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either5
enum Either5<Item0, Item1, Item2, Item3, Item4>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }
}

// MARK: Equatable
extension Either5: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable
{
    static func ==(left: Either5, right: Either5) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either6
enum Either6<Item0, Item1, Item2, Item3, Item4, Item5>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }
}

// MARK: Equatable
extension Either6: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable
{
    static func ==(left: Either6, right: Either6) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either7
enum Either7<Item0, Item1, Item2, Item3, Item4, Item5, Item6>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }
}

// MARK: Equatable
extension Either7: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable
{
    static func ==(left: Either7, right: Either7) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either8
enum Either8<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }
}

// MARK: Equatable
extension Either8: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable
{
    static func ==(left: Either8, right: Either8) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either9
enum Either9<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }
}

// MARK: Equatable
extension Either9: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable
{
    static func ==(left: Either9, right: Either9) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either10
enum Either10<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }
}

// MARK: Equatable
extension Either10: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable
{
    static func ==(left: Either10, right: Either10) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either11
enum Either11<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }
}

// MARK: Equatable
extension Either11: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable
{
    static func ==(left: Either11, right: Either11) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either12
enum Either12<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }
}

// MARK: Equatable
extension Either12: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable
{
    static func ==(left: Either12, right: Either12) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either13
enum Either13<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }
}

// MARK: Equatable
extension Either13: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable
{
    static func ==(left: Either13, right: Either13) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either14
enum Either14<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }
}

// MARK: Equatable
extension Either14: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable
{
    static func ==(left: Either14, right: Either14) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either15
enum Either15<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13, Item14>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)
    case item14(Item14)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }

    init(_ item14: Item14)
    {
        self = .item14(item14)
    }
}

// MARK: Equatable
extension Either15: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable, Item14: Equatable
{
    static func ==(left: Either15, right: Either15) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        case (let .item14(leftValue), let .item14(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either16
enum Either16<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13, Item14, Item15>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)
    case item14(Item14)
    case item15(Item15)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }

    init(_ item14: Item14)
    {
        self = .item14(item14)
    }

    init(_ item15: Item15)
    {
        self = .item15(item15)
    }
}

// MARK: Equatable
extension Either16: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable, Item14: Equatable, Item15: Equatable
{
    static func ==(left: Either16, right: Either16) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        case (let .item14(leftValue), let .item14(rightValue)):
            return leftValue == rightValue

        case (let .item15(leftValue), let .item15(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either17
enum Either17<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13, Item14, Item15, Item16>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)
    case item14(Item14)
    case item15(Item15)
    case item16(Item16)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }

    init(_ item14: Item14)
    {
        self = .item14(item14)
    }

    init(_ item15: Item15)
    {
        self = .item15(item15)
    }

    init(_ item16: Item16)
    {
        self = .item16(item16)
    }
}

// MARK: Equatable
extension Either17: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable, Item14: Equatable, Item15: Equatable, Item16: Equatable
{
    static func ==(left: Either17, right: Either17) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        case (let .item14(leftValue), let .item14(rightValue)):
            return leftValue == rightValue

        case (let .item15(leftValue), let .item15(rightValue)):
            return leftValue == rightValue

        case (let .item16(leftValue), let .item16(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either18
enum Either18<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13, Item14, Item15, Item16, Item17>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)
    case item14(Item14)
    case item15(Item15)
    case item16(Item16)
    case item17(Item17)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }

    init(_ item14: Item14)
    {
        self = .item14(item14)
    }

    init(_ item15: Item15)
    {
        self = .item15(item15)
    }

    init(_ item16: Item16)
    {
        self = .item16(item16)
    }

    init(_ item17: Item17)
    {
        self = .item17(item17)
    }
}

// MARK: Equatable
extension Either18: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable, Item14: Equatable, Item15: Equatable, Item16: Equatable, Item17: Equatable
{
    static func ==(left: Either18, right: Either18) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        case (let .item14(leftValue), let .item14(rightValue)):
            return leftValue == rightValue

        case (let .item15(leftValue), let .item15(rightValue)):
            return leftValue == rightValue

        case (let .item16(leftValue), let .item16(rightValue)):
            return leftValue == rightValue

        case (let .item17(leftValue), let .item17(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either19
enum Either19<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13, Item14, Item15, Item16, Item17, Item18>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)
    case item14(Item14)
    case item15(Item15)
    case item16(Item16)
    case item17(Item17)
    case item18(Item18)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }

    init(_ item14: Item14)
    {
        self = .item14(item14)
    }

    init(_ item15: Item15)
    {
        self = .item15(item15)
    }

    init(_ item16: Item16)
    {
        self = .item16(item16)
    }

    init(_ item17: Item17)
    {
        self = .item17(item17)
    }

    init(_ item18: Item18)
    {
        self = .item18(item18)
    }
}

// MARK: Equatable
extension Either19: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable, Item14: Equatable, Item15: Equatable, Item16: Equatable, Item17: Equatable, Item18: Equatable
{
    static func ==(left: Either19, right: Either19) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        case (let .item14(leftValue), let .item14(rightValue)):
            return leftValue == rightValue

        case (let .item15(leftValue), let .item15(rightValue)):
            return leftValue == rightValue

        case (let .item16(leftValue), let .item16(rightValue)):
            return leftValue == rightValue

        case (let .item17(leftValue), let .item17(rightValue)):
            return leftValue == rightValue

        case (let .item18(leftValue), let .item18(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}

// MARK:- Either20
enum Either20<Item0, Item1, Item2, Item3, Item4, Item5, Item6, Item7, Item8, Item9, Item10, Item11, Item12, Item13, Item14, Item15, Item16, Item17, Item18, Item19>
{
    case item0(Item0)
    case item1(Item1)
    case item2(Item2)
    case item3(Item3)
    case item4(Item4)
    case item5(Item5)
    case item6(Item6)
    case item7(Item7)
    case item8(Item8)
    case item9(Item9)
    case item10(Item10)
    case item11(Item11)
    case item12(Item12)
    case item13(Item13)
    case item14(Item14)
    case item15(Item15)
    case item16(Item16)
    case item17(Item17)
    case item18(Item18)
    case item19(Item19)

    init(_ item0: Item0)
    {
        self = .item0(item0)
    }

    init(_ item1: Item1)
    {
        self = .item1(item1)
    }

    init(_ item2: Item2)
    {
        self = .item2(item2)
    }

    init(_ item3: Item3)
    {
        self = .item3(item3)
    }

    init(_ item4: Item4)
    {
        self = .item4(item4)
    }

    init(_ item5: Item5)
    {
        self = .item5(item5)
    }

    init(_ item6: Item6)
    {
        self = .item6(item6)
    }

    init(_ item7: Item7)
    {
        self = .item7(item7)
    }

    init(_ item8: Item8)
    {
        self = .item8(item8)
    }

    init(_ item9: Item9)
    {
        self = .item9(item9)
    }

    init(_ item10: Item10)
    {
        self = .item10(item10)
    }

    init(_ item11: Item11)
    {
        self = .item11(item11)
    }

    init(_ item12: Item12)
    {
        self = .item12(item12)
    }

    init(_ item13: Item13)
    {
        self = .item13(item13)
    }

    init(_ item14: Item14)
    {
        self = .item14(item14)
    }

    init(_ item15: Item15)
    {
        self = .item15(item15)
    }

    init(_ item16: Item16)
    {
        self = .item16(item16)
    }

    init(_ item17: Item17)
    {
        self = .item17(item17)
    }

    init(_ item18: Item18)
    {
        self = .item18(item18)
    }

    init(_ item19: Item19)
    {
        self = .item19(item19)
    }
}

// MARK: Equatable
extension Either20: Equatable where Item0: Equatable, Item1: Equatable, Item2: Equatable, Item3: Equatable, Item4: Equatable, Item5: Equatable, Item6: Equatable, Item7: Equatable, Item8: Equatable, Item9: Equatable, Item10: Equatable, Item11: Equatable, Item12: Equatable, Item13: Equatable, Item14: Equatable, Item15: Equatable, Item16: Equatable, Item17: Equatable, Item18: Equatable, Item19: Equatable
{
    static func ==(left: Either20, right: Either20) -> Bool
    {
        switch (left, right)
        {
        case (let .item0(leftValue), let .item0(rightValue)):
            return leftValue == rightValue

        case (let .item1(leftValue), let .item1(rightValue)):
            return leftValue == rightValue

        case (let .item2(leftValue), let .item2(rightValue)):
            return leftValue == rightValue

        case (let .item3(leftValue), let .item3(rightValue)):
            return leftValue == rightValue

        case (let .item4(leftValue), let .item4(rightValue)):
            return leftValue == rightValue

        case (let .item5(leftValue), let .item5(rightValue)):
            return leftValue == rightValue

        case (let .item6(leftValue), let .item6(rightValue)):
            return leftValue == rightValue

        case (let .item7(leftValue), let .item7(rightValue)):
            return leftValue == rightValue

        case (let .item8(leftValue), let .item8(rightValue)):
            return leftValue == rightValue

        case (let .item9(leftValue), let .item9(rightValue)):
            return leftValue == rightValue

        case (let .item10(leftValue), let .item10(rightValue)):
            return leftValue == rightValue

        case (let .item11(leftValue), let .item11(rightValue)):
            return leftValue == rightValue

        case (let .item12(leftValue), let .item12(rightValue)):
            return leftValue == rightValue

        case (let .item13(leftValue), let .item13(rightValue)):
            return leftValue == rightValue

        case (let .item14(leftValue), let .item14(rightValue)):
            return leftValue == rightValue

        case (let .item15(leftValue), let .item15(rightValue)):
            return leftValue == rightValue

        case (let .item16(leftValue), let .item16(rightValue)):
            return leftValue == rightValue

        case (let .item17(leftValue), let .item17(rightValue)):
            return leftValue == rightValue

        case (let .item18(leftValue), let .item18(rightValue)):
            return leftValue == rightValue

        case (let .item19(leftValue), let .item19(rightValue)):
            return leftValue == rightValue

        default:
            return false
        }
    }
}
