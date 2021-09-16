pragma solidity >=0.4.22 <0.8.8;

contract Purchase {
    address[16] public purchasers;

    // Adopting a pet
    function purchase(uint konflixId) public returns (uint) {
        require(konflixId >= 0 && konflixId <= 15);

        purchasers[konflixId] = msg.sender;

        return konflixId;
    }

    // Retrieving the purchasers
    function getPurchasers() public view returns (address[16] memory) {
        return purchasers;
    }
}