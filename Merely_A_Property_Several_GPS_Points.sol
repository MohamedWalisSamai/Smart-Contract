/*
    SAMAI Mohamed Walis 
    version 1
    11/04/2017
    Mon smart contract me permet de borner une propriété sur pusieurs points GPS
    j'ai fais juste pour 4 points pas plus 
*/
pragma solidity 0.4.10; 

contract MerelyAPropertySeveralGPSPoints{
    
        address public addressLand;
        uint x1 = 1;
        uint x2 = 2;
        uint y1 = 11;
        uint y2 = 22;
        uint[4] Proprty;
        address msg = 0x1;
        
        event PrintPoints(string msg, 
                          string x, uint x1, string xx, uint x2,
                          string y, uint y1, string yy, uint y2);
        
        function MerelyAPropertySeveralGPSPoints(address _addressLand){
            addressLand = _addressLand;
        }// end constructeur 
        
        modifier verification (bool _condition){
        if(!_condition) 
            throw;
            _;
        }//endverification
        
        function limitProperty ()
            verification(addressLand == msg)
        {
            Proprty[0] = x1;
            Proprty[1] = x2;
            Proprty[2] = y1;
            Proprty[3] = y2;
            PrintPoints("The GPS coordinates of land = ",
                                             "x1 = ", x1,
                                             "x1 = ", x2,
                                             "x1 = ", y1,
                                             "x1 = ", y2);
        }//end limitProperty
    }//end MerelyAPropertySeveralGPSPoints






