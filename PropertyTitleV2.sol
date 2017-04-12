/*
	SAMAI Mohamed Walis 
    Version 2 
    J’ai un smart conctract permettant de déclarer un titre de propriété 
    Pour exécuter il faut mettre l'adresse du titre de propriété et le SC il va l'ajouté 
    Ici j'ai ajouté un mapping pour ajouté les Proproprités 
*/
pragma solidity 0.4.10;

contract PropertyTitle {
    
    address public newProperty;
    address Owner;
    
    event Print(address newProperty,string message);
    
    function PropertyTitle (address _newProperty) {
        Owner = msg.sender;
        newProperty = _newProperty;
        }//endPropertyTitle
        
    mapping(address => address) public Propertys;
    
    function addProprty() {
        Propertys[Owner] = newProperty;
        Print(newProperty,"Property title added");
    }//addProprty
    
}//endPropertyTitle

 

    
