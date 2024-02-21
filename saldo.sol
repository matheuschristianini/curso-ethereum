/*
SPDX-License-Identifier: CC-BY-4.0
(c) Desenvolvido por Matheus
This work is licensed under a Creative Commons Attribution 4.0 International License.
*/
// 0x09ed342f87eccb1c980983A1E66c28c3F8bfdB69
pragma solidity 0.8.19;

import "./IERC20.sol";

contract Saldo {

    function obtemSaldo(address token_, address pessoa_) public view returns (uint) {
        IERC20 token = IERC20(token_);
        return token.balanceOf(pessoa_);
    }

}
