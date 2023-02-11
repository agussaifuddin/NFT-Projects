// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

contract MyWalletAddress is ERC1155 {
    uint256 public constant BTC = 0;
    uint256 public constant ETH = 1;
    uint256 public constant BNB = 2;
    uint256 public constant USDT = 3;
    uint256 public constant BUSD = 4;
    uint256 public constant MATIC = 5;
    uint256 public constant SOL = 6;
    uint256 public constant TRX = 7;
    uint256 public constant DOGE = 8;
    uint256 public constant SHIB = 9;

    constructor() public ERC1155("https://agussaifuddin.github.io/nft/mywalletaddress/metadata/{id}.json") {
        _mint(msg.sender, BTC, 1, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, ETH, 2, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, BNB, 3, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, USDT, 4, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, BUSD, 5, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, MATIC, 6, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, SOL, 6, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, TRX, 7, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, DOGE, 8, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, SHIB, 9, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
    }

    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(address operator, address from, address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        internal
        override(ERC1155, ERC1155Supply)
    {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
}
