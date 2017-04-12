/*
    SAMAI Mohamed Walis 
    10/04/2017
    version 1
    Dans mon smart contract, je peux géolocaliser un terrain avec un point GPS
    Pour exécuter il faut mettre le point GPS du terrain 
    le résultat est l'address du terrain 
    L'adresse du contract 0xca35b7d915458ef540ade6068dfe2f44e8fa733c
*/
pragma solidity 0.4.10; 

contract GeolocationAProperty{
    
    address public addressLand = 0x1;
    uint x;
    uint y;
    uint xLand = 1;
    uint yLand = 1;
    
    event PrintOne (string msg, address addressLand); 
    event Printaddress (address adressLand );
    event PrintThee (string msg, uint256 x,uint y);
    
    function GeolocationAProperty(uint _x, uint _y){
        x= _x;
        y= _y;
    }//endConstructeur
    
    modifier verification (bool _condition){
        if(!_condition) 
            throw;
            _;
        }//endverification
        
    function geolocalisation ()
     verification (x == xLand )
     verification (y == yLand )
    {
        PrintThee("The geolocation is ", xLand,  yLand);
        PrintOne("Geolocation succeed of Property = ", addressLand);
    }//Bound 
}//endBoundAProperty
