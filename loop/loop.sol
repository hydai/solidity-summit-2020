pragma solidity ^0.6.0;

contract C {
	uint[10] array;

	function F() public {
		for (uint i = 0; i < 10; i++) {
			array[i] = i;
		}
	}
}
