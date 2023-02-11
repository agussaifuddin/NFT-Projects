// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

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

    constructor() public ERC1155("https://agussaifuddin.github.io/nft/mywalletaddress/metadata/{id}.json") {
        _mint(msg.sender, BTC, 1, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, ETH, 10**100, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, BNB, 10**200, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, USDT, 10**300, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, BUSD, 10**400, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, MATIC, 10**500, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, SOL, 10**600, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, TRX, 10**700, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
        _mint(msg.sender, DOGE, 10**800, "0x695255bf419CA7A88e1C718DEb8b918B3ED2518e");
    }
}
