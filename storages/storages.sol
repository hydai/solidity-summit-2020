pragma solidity ^0.6.0;
contract C {
	int I;
	function F() public returns (int) {
		I += 10;
		I += 10;
		return I;
	}
}
