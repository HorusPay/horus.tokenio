#pragma once

#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>


namespace horuspaytoken {


/*. Taken from the great internet
*.  https://eosio.stackexchange.com/questions/1952/how-to-convert-asset-to-string-in-a-contract
*/
std::string symbol_to_string(asset val)
{
    uint64_t v = val.symbol.value;
    v >>= 8;
    string result;
    while (v > 0) {
            char c = static_cast<char>(v & 0xFF);
            result += c;
            v >>= 8;
    }
    return result;
}

std::string asset_to_string(asset val)
{
    string sign = val.amount < 0 ? "-" : "";
    uint64_t abs_amount = static_cast<uint64_t>(std::abs(val.amount));
    auto precision = val.symbol.precision();

    string result = std::to_string( abs_amount);
    if( precision > 0 )
    {
            auto p = precision;
            uint64_t p10 = 1;
            while(p > 0) {
                    p10 *= 10;
                    p--;
            }

            result = std::to_string( static_cast<uint64_t>(abs_amount / p10));
            auto fract = abs_amount % p10;
            result += "." + std::to_string(p10 + fract).erase(0,1);
    }
    return sign + result + " " + symbol_to_string(val);
}


}   /// namspace horuspaytoken
