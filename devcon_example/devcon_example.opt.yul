{
    {
        let _1 := calldataload(0)
        let sum := 0
        let i := sum
        for { } lt(i, calldataload(_1)) { i := add(i, 1) }
        {
            sum := add(sum, calldataload(add(add(_1, mul(i, 0x20)), 0x20)))
        }
        sstore(0, sum)
    }
}
