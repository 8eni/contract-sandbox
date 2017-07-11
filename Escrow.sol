contract Escrow {
    
    address chairperson;
    
    function Escrow() {
        chairperson = msg.sender;    
    }
    
    // Modiefiers
    modifier chairPersonOnly() {
        if (chairperson != msg.sender) return;
        _;
    }
    
    // Setters
    function sendEthToContract() payable returns(uint) {
        return msg.value;
    }
    
    function sendContractEthToChairperson() chairPersonOnly returns(uint) {
        chairperson.transfer(this.balance);
        return chairperson.balance;
    }
    
    // Getter
    function getAddressBalance(address _address) constant returns(uint) {
        return _address.balance;
    }
    
    function getContractBalance() constant returns(uint) {
        return this.balance;
    }
}