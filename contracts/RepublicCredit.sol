// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract RepublicCredit 
{
    
    uint public TotalRepublicCredit = 1000000;
    uint public USDRepublicCredit = 1000;
    uint public Purchase = 0;

    mapping(address => uint) RepublicCreditEquity;
    mapping(address => uint) RepublicCreditUSD;
    
    modifier RepublicCreditBuy(uint USDinvested)
    {
        require(USDinvested  * USDRepublicCredit + Purchase <= TotalRepublicCredit );
        _;
    }
    
    function EquityinRepublicCredit(address CoinHolder) external view returns (uint)
    {
        return RepublicCreditEquity[CoinHolder];
    }
    
    function equity_in_usd(address CoinHolder) external view returns (uint)
    {
        return RepublicCreditUSD[CoinHolder];
    }
    
    function BuyRepublicCredit(address CoinHolder,uint USDinvested) external  RepublicCreditBuy(USDinvested)
    {
        uint  hadcoins_bought = USDinvested *USDRepublicCredit;
        RepublicCreditEquity[CoinHolder] += hadcoins_bought;
        RepublicCreditUSD[CoinHolder] = RepublicCreditEquity[CoinHolder] / USDRepublicCredit;
        Purchase += hadcoins_bought;
    }
    
    function SellRepublicCredit(address CoinHolder,uint CoinSold) external 
    {
        RepublicCreditEquity[CoinHolder] -= CoinSold;
        RepublicCreditUSD[CoinHolder] = RepublicCreditEquity[CoinHolder] / 1000;
        Purchase -= CoinSold ;
    }
 
    
}