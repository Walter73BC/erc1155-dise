// contracts/Trysample for dise case.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Dise115502 is ERC1155, Ownable {
    
    uint256 public constant PLATIUM_D = 0;
    uint256 public constant GOLDEN_D = 1;
    uint256 public constant SILVER_D = 2;
    uint256 public constant COPPER_D = 3;
    

    constructor() ERC1155("https://bafybeiboupjnnftezjserwqpt7qegf7c6nrdpjlhjg6ukbri64gasjn2qm.ipfs.dweb.link/{id}.json") {
        _mint(msg.sender, PLATIUM_D, 2, "");
        _mint(msg.sender, GOLDEN_D, 4, "");
        _mint(msg.sender, SILVER_D, 6, "");
        _mint(msg.sender, COPPER_D, 8, "");
    }
    
    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
    }

    function burn(address account, uint256 id, uint256 amount) public {
        require(msg.sender == account);
        _burn(account, id, amount);
    }
    
}