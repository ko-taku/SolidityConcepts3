// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./ICalculator.sol";
import "./MathLibrary.sol";

abstract contract AbstractCalculator is ICalculator {
    using MathLibrary for uint256;

    function calculate(
        uint256 a,
        uint256 b,
        string memory operation
    ) public pure virtual returns (uint256);

    function add(uint256 a, uint256 b) public pure override returns (uint256) {
        return MathLibrary.add(a, b);
    }
    function subtract(
        uint256 a,
        uint256 b
    ) public pure override returns (uint256) {
        return MathLibrary.subtract(a, b);
    }
    function multiply(
        uint256 a,
        uint256 b
    ) public pure override returns (uint256) {
        return MathLibrary.multiply(a, b);
    }
    function divide(
        uint256 a,
        uint256 b
    ) public pure override returns (uint256) {
        return MathLibrary.divide(a, b);
    }
}
