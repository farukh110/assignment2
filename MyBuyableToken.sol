pragma solidity ^0.6.2;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.1/contracts/token/ERC20/ERC20.sol";


contract MyBuyableToken is ERC20 {
    address public owner;    
    
    constructor()
        ERC20("fARUKH SAJJAD", "FS") public
    {
            owner = msg.sender;
    }
    //print 1 Ether = 200 [1 * 10**18]
    
    function buy() payable public{
        
        
        uint tokens = 100 * msg.value;
        
        payable(owner).transfer(msg.value);
        
        _transfer(owner,msg.sender,tokens);
    }
    
    receive() payable external{
        buy();
    }
    
    fallback() payable external{
        buy();
    }
    
}
