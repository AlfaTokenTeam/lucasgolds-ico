pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Lucasgolds is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Lucasgolds(address _owner)  UpgradeableToken(_owner) {
    name = "Lucasgolds";
    symbol = "LGO";
    totalSupply = 1000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}