/*
		Version1
    J’ai un smart conctract permettant de déclarer un titre de propriété
    Pour exécuter il faut mettre l'adresse du titre de propriété et le SC il va l'ajouté
*/

pragma solidity 0.4.10;

contract PropertyTitle {
    address public newProperty;
    int x =0;
    event Print(string message, address newProperty );

    function PropertyTitle (address _newProperty)  {
        newProperty = _newProperty;

        }

    address public Propertys;

    function AddProperty(){
        Propertys = newProperty;
        Print("Property title added ", newProperty);
    }
}
