// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

pragma solidity ^0.8.7;

contract BasicNFT is ERC721 {
    string public constant TOKEN_URI =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    uint256 private s_TokenCounter; 




    //  Constructor for openzeppelin contract
    constructor() ERC721("Catwalk", "CAT") {
       s_TokenCounter = 0;
    }


    // Get State variables
    function getTokenCounter() public view returns(uint256) {
        return s_TokenCounter;
    }

    // Get token URI
    function getTokenURI() public view returns(string memory){
        return TOKEN_URI;
    } 


    // Mint nft
    function mintNFT() public returns(uint256) {
        _safeMint(msg.sender, s_TokenCounter);
        s_TokenCounter += 1;
        return s_TokenCounter;
    }
}
