pragma solidity ^0.4.11;
import "../node_modules/zeppelin-solidity/contracts/token/MintableToken.sol";

contract CSAToken is MintableToken {
    string public name; 
    string public symbol = "EGT";
    uint public decimals = 1;
    uint public INITIAL_SUPPLY; 
    uint public token_price;

    function CSAToken(string _name, uint _initial_supply, uint _token_price) {
        INITIAL_SUPPLY = _initial_supply;
        totalSupply = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        name = _name;
        token_price = _token_price;
    }
}