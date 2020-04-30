IR:
/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "C_20" {
    code {
        mstore(64, 128)

        // Begin state variable initialization for contract "C" (1 variables)
        // End state variable initialization for contract "C".


        codecopy(0, dataoffset("C_20_deployed"), datasize("C_20_deployed"))
        return(0, datasize("C_20_deployed"))


        function checked_add_t_int256(x, y) -> sum {

            // overflow, if x >= 0 and y > (maxValue - x)
            if and(iszero(slt(x, 0)), sgt(y, sub(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { revert(0, 0) }
            // underflow, if x < 0 and y < (minValue - x)
            if and(slt(x, 0), slt(y, sub(0x8000000000000000000000000000000000000000000000000000000000000000, x))) { revert(0, 0) }

            sum := add(x, y)
        }

        function cleanup_from_storage_t_int256(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_int256(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_10_by_1_to_t_int256(value) -> converted {
            converted := cleanup_t_int256(value)
        }

        function extract_from_storage_value_offset_0t_int256(slot_value) -> value {
            value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
        }

        function fun_F_19()  -> vloc__6 {
            let zero_value_for_type_t_int256_1 := zero_value_for_split_t_int256()
            vloc__6 := zero_value_for_type_t_int256_1

            let expr_9 := 0x0a
            let _2 := convert_t_rational_10_by_1_to_t_int256(expr_9)
            let _3 := read_from_storage_offset_0_t_int256(0x00)
            _2 := checked_add_t_int256(_3, _2)
            update_storage_value_offset_0t_int256(0x00, _2)
            let expr_10 := _2
            let expr_13 := 0x0a
            let _4 := convert_t_rational_10_by_1_to_t_int256(expr_13)
            let _5 := read_from_storage_offset_0_t_int256(0x00)
            _4 := checked_add_t_int256(_5, _4)
            update_storage_value_offset_0t_int256(0x00, _4)
            let expr_14 := _4
            let _6 := read_from_storage_offset_0_t_int256(0x00)
            let expr_16 := _6
            vloc__6 := expr_16
            leave

        }

        function prepare_store_t_int256(value) -> ret {
            ret := value
        }

        function read_from_storage_offset_0_t_int256(slot) -> value {
            value := extract_from_storage_value_offset_0t_int256(sload(slot))
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_int256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_int256(value)))
        }


        function zero_value_for_split_t_int256() -> ret {
            ret := 0
        }

    }
    object "C_20_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x28811f59
                {
                    // F()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_F_19()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos ,  ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)


            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_int256__to_t_int256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
                mstore(64, newFreePtr)
            }

            function checked_add_t_int256(x, y) -> sum {

                // overflow, if x >= 0 and y > (maxValue - x)
                if and(iszero(slt(x, 0)), sgt(y, sub(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { revert(0, 0) }
                // underflow, if x < 0 and y < (minValue - x)
                if and(slt(x, 0), slt(y, sub(0x8000000000000000000000000000000000000000000000000000000000000000, x))) { revert(0, 0) }

                sum := add(x, y)
            }

            function cleanup_from_storage_t_int256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(value)
            }

            function extract_from_storage_value_offset_0t_int256(slot_value) -> value {
                value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
            }

            function fun_F_19()  -> vloc__6 {
                let zero_value_for_type_t_int256_1 := zero_value_for_split_t_int256()
                vloc__6 := zero_value_for_type_t_int256_1

                let expr_9 := 0x0a
                let _2 := convert_t_rational_10_by_1_to_t_int256(expr_9)
                let _3 := read_from_storage_offset_0_t_int256(0x00)
                _2 := checked_add_t_int256(_3, _2)
                update_storage_value_offset_0t_int256(0x00, _2)
                let expr_10 := _2
                let expr_13 := 0x0a
                let _4 := convert_t_rational_10_by_1_to_t_int256(expr_13)
                let _5 := read_from_storage_offset_0_t_int256(0x00)
                _4 := checked_add_t_int256(_5, _4)
                update_storage_value_offset_0t_int256(0x00, _4)
                let expr_14 := _4
                let _6 := read_from_storage_offset_0_t_int256(0x00)
                let expr_16 := _6
                vloc__6 := expr_16
                leave

            }

            function prepare_store_t_int256(value) -> ret {
                ret := value
            }

            function read_from_storage_offset_0_t_int256(slot) -> value {
                value := extract_from_storage_value_offset_0t_int256(sload(slot))
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_int256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_int256(value)))
            }


            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

        }
    }
}


Optimized IR:
/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/

object "C_20" {
    code {
        mstore(64, 128)
        codecopy(0, dataoffset("C_20_deployed"), datasize("C_20_deployed"))
        return(0, datasize("C_20_deployed"))
        function checked_add_t_int256(x, y) -> sum
        {
            if and(iszero(slt(x, 0)), sgt(y, sub(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { revert(0, 0) }
            if and(slt(x, 0), slt(y, sub(0x8000000000000000000000000000000000000000000000000000000000000000, x))) { revert(0, 0) }
            sum := add(x, y)
        }
        function cleanup_from_storage_t_int256(value) -> cleaned
        { cleaned := value }
        function cleanup_t_int256(value) -> cleaned
        { cleaned := value }
        function convert_t_rational_10_by_1_to_t_int256(value) -> converted
        {
            converted := cleanup_t_int256(value)
        }
        function extract_from_storage_value_offset_0t_int256(slot_value) -> value
        {
            value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
        }
        function fun_F_19() -> vloc__6
        {
            let zero_value_for_type_t_int256_1 := zero_value_for_split_t_int256()
            vloc__6 := zero_value_for_type_t_int256_1
            let expr_9 := 0x0a
            let _2 := convert_t_rational_10_by_1_to_t_int256(expr_9)
            let _3 := read_from_storage_offset_0_t_int256(0x00)
            _2 := checked_add_t_int256(_3, _2)
            update_storage_value_offset_0t_int256(0x00, _2)
            let expr_10 := _2
            let expr_13 := 0x0a
            let _4 := convert_t_rational_10_by_1_to_t_int256(expr_13)
            let _5 := read_from_storage_offset_0_t_int256(0x00)
            _4 := checked_add_t_int256(_5, _4)
            update_storage_value_offset_0t_int256(0x00, _4)
            let expr_14 := _4
            let _6 := read_from_storage_offset_0_t_int256(0x00)
            let expr_16 := _6
            vloc__6 := expr_16
            leave
        }
        function prepare_store_t_int256(value) -> ret
        { ret := value }
        function read_from_storage_offset_0_t_int256(slot) -> value
        {
            value := extract_from_storage_value_offset_0t_int256(sload(slot))
        }
        function shift_left_0(value) -> newValue
        { newValue := shl(0, value) }
        function shift_right_0_unsigned(value) -> newValue
        { newValue := shr(0, value) }
        function update_byte_slice_32_shift_0(value, toInsert) -> result
        {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }
        function update_storage_value_offset_0t_int256(slot, value)
        {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_int256(value)))
        }
        function zero_value_for_split_t_int256() -> ret
        { ret := 0 }
    }
    object "C_20_deployed" {
        code {
            mstore(64, 128)
            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector
                case 0x28811f59 {
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 := fun_F_19()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos, ret_0)
                    return(memPos, sub(memEnd, memPos))
                }
                default { }
            }
            if iszero(calldatasize()) { }
            revert(0, 0)
            function abi_decode_tuple_(headStart, dataEnd)
            {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }
            }
            function abi_encode_t_int256_to_t_int256_fromStack(value, pos)
            {
                mstore(pos, cleanup_t_int256(value))
            }
            function abi_encode_tuple_t_int256__to_t_int256__fromStack(headStart, value0) -> tail
            {
                tail := add(headStart, 32)
                abi_encode_t_int256_to_t_int256_fromStack(value0, add(headStart, 0))
            }
            function allocateMemory(size) -> memPtr
            {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
                mstore(64, newFreePtr)
            }
            function checked_add_t_int256(x, y) -> sum
            {
                if and(iszero(slt(x, 0)), sgt(y, sub(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { revert(0, 0) }
                if and(slt(x, 0), slt(y, sub(0x8000000000000000000000000000000000000000000000000000000000000000, x))) { revert(0, 0) }
                sum := add(x, y)
            }
            function cleanup_from_storage_t_int256(value) -> cleaned
            { cleaned := value }
            function cleanup_t_int256(value) -> cleaned
            { cleaned := value }
            function convert_t_rational_10_by_1_to_t_int256(value) -> converted
            {
                converted := cleanup_t_int256(value)
            }
            function extract_from_storage_value_offset_0t_int256(slot_value) -> value
            {
                value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
            }
            function fun_F_19() -> vloc__6
            {
                let zero_value_for_type_t_int256_1 := zero_value_for_split_t_int256()
                vloc__6 := zero_value_for_type_t_int256_1
                let expr_9 := 0x0a
                let _2 := convert_t_rational_10_by_1_to_t_int256(expr_9)
                let _3 := read_from_storage_offset_0_t_int256(0x00)
                _2 := checked_add_t_int256(_3, _2)
                update_storage_value_offset_0t_int256(0x00, _2)
                let expr_10 := _2
                let expr_13 := 0x0a
                let _4 := convert_t_rational_10_by_1_to_t_int256(expr_13)
                let _5 := read_from_storage_offset_0_t_int256(0x00)
                _4 := checked_add_t_int256(_5, _4)
                update_storage_value_offset_0t_int256(0x00, _4)
                let expr_14 := _4
                let _6 := read_from_storage_offset_0_t_int256(0x00)
                let expr_16 := _6
                vloc__6 := expr_16
                leave
            }
            function prepare_store_t_int256(value) -> ret
            { ret := value }
            function read_from_storage_offset_0_t_int256(slot) -> value
            {
                value := extract_from_storage_value_offset_0t_int256(sload(slot))
            }
            function shift_left_0(value) -> newValue
            { newValue := shl(0, value) }
            function shift_right_0_unsigned(value) -> newValue
            { newValue := shr(0, value) }
            function shift_right_224_unsigned(value) -> newValue
            { newValue := shr(224, value) }
            function update_byte_slice_32_shift_0(value, toInsert) -> result
            {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }
            function update_storage_value_offset_0t_int256(slot, value)
            {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_int256(value)))
            }
            function zero_value_for_split_t_int256() -> ret
            { ret := 0 }
        }
    }
}

