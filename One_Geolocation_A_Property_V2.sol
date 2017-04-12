/*
    SAMAI Mohamed Walis 
    version 2
    11/04/2017

    Dans mon smart contract, je peux géolocaliser un terrain avec un point GPS
    Pour exécuter il faut mettre le point GPS du terrain 
    Le résultat est l'address du terrain 
    Ici je rajoute un taleau pour vérifier les coordonnées GPS 
    L'adresse du contract 0xca35b7d915458ef540ade6068dfe2f44e8fa733c
*/
pragma solidity 0.4.10; 

contract GeolocationAProperty{
    
    uint[5] xTab= [1,2,3,5,6];
    uint[5] yTab= [9,6,5,7,4];
    
    bool confirming1 = false;
    bool confirming2 = false;

    uint xLand;
    uint yLand;
    
    address addressLand = 0x2;
    
    event PrintOne(string msg);
    event PrintTwo (string msg, address addressLand); 
    event Printaddress (address adressLand );
    event PrintThree (string msg, uint x);
    
    function GeolocationAProperty (uint _x, uint _y){
       xLand= _x;
       yLand= _y;
    }

    function verification (){
            for (uint i= 0; i<5 ;i++)
                {
                if (xTab[i] == xLand)
                    {
                        confirming1 = true ;
                    }//endif
                if (yTab[i] == yLand)
                    {
                        confirming2 = true ;
                    }//endif
                }//end For
        
        if (confirming1 == true && confirming2 == true ){
             PrintTwo("Geolocation succeed of Property = ", addressLand);
        }//end if
        else 
        {
            PrintOne("The GPS point does't match");
        }//end else
    }//end verification
}//end GeolocationAProperty






