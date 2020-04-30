object "C_28_deployed" {
	code {
		mstore(64, 128)
		if iszero(lt(calldatasize(), 4))
		{
			let selector := shift_right_224_unsigned(calldataload(0))
			switch selector
			case 0x28811f59 {
				if callvalue() { revert(0, 0) }
				abi_decode_tuple_(4, calldatasize())
				fun_F_27()
				let memPos := allocateMemory(0)
				let memEnd := abi_encode_tuple__to__fromStack(memPos)
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
		function abi_encode_tuple__to__fromStack(headStart) -> tail
		{ tail := add(headStart, 0) }
		function allocateMemory(size) -> memPtr
		{
			memPtr := mload(64)
			let newFreePtr := add(memPtr, size)
			if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { revert(0, 0) }
			mstore(64, newFreePtr)
		}
		function array_dataslot_t_array$_t_uint256_$10_storage(ptr) -> data
		{ data := ptr }
		function array_length_t_array$_t_uint256_$10_storage(value) -> length
		{ length := 0x0a }
		function cleanup_t_uint256(value) -> cleaned
		{ cleaned := value }
		function convert_t_rational_0_by_1_to_t_uint256(value) -> converted
		{
			converted := cleanup_t_uint256(value)
		}
		function convert_t_rational_10_by_1_to_t_uint256(value) -> converted
		{
			converted := cleanup_t_uint256(value)
		}
		function fun_F_27()
		{
			for {
				let expr_10 := 0x00
				let vloc_i_9 := convert_t_rational_0_by_1_to_t_uint256(expr_10)
			}
			1
			{
				let _2 := vloc_i_9
				let _1 := increment_t_uint256(_2)
				vloc_i_9 := _1
				let expr_16 := _2
			}
			{
				let _3 := vloc_i_9
				let expr_12 := _3
				let expr_13 := 0x0a
				let expr_14 := lt(expr_12, convert_t_rational_10_by_1_to_t_uint256(expr_13))
				if iszero(expr_14) { break }
				let _4 := vloc_i_9
				let expr_21 := _4
				let _5_slot := 0x00
				let expr_18_slot := _5_slot
				let _6 := vloc_i_9
				let expr_19 := _6
				let _7, _8 := storage_array_index_access_t_array$_t_uint256_$10_storage(expr_18_slot, expr_19)
				update_storage_value_t_uint256(_7, _8, expr_21)
				let expr_22 := expr_21
			}
		}
		function increment_t_uint256(value) -> ret
		{
			if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { revert(0, 0) }
			ret := add(value, 1)
		}
		function prepare_store_t_uint256(value) -> ret
		{ ret := value }
		function shift_left_dynamic(bits, value) -> newValue
		{ newValue := shl(bits, value) }
		function shift_right_224_unsigned(value) -> newValue
		{ newValue := shr(224, value) }
		function storage_array_index_access_t_array$_t_uint256_$10_storage(array, index) -> slot, offset
		{
			if iszero(lt(index, array_length_t_array$_t_uint256_$10_storage(array))) { revert(0, 0) }
			let data := array_dataslot_t_array$_t_uint256_$10_storage(array)
			slot := add(data, mul(index, 1))
			offset := 0
		}
		function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result
		{
			let shiftBits := mul(shiftBytes, 8)
			let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
			toInsert := shift_left_dynamic(shiftBits, toInsert)
			value := and(value, not(mask))
			result := or(value, and(toInsert, mask))
		}
		function update_storage_value_t_uint256(slot, offset, value)
		{
			sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(value)))
		}
	}
}
