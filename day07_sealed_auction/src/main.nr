use dep::std;
fn main(
    bid_amount: u64,          
    account_balance: u64,     
    nonce: u64,               
    reserve_price: pub u64,   
    max_bid_limit: pub u64,   
    commitment_hash: pub Field
) -> pub u8 {                 
    
    assert(bid_amount >= reserve_price);
    assert(bid_amount <= max_bid_limit);
    assert(account_balance >= bid_amount);

    let computed_hash = std::hash::pedersen_hash([bid_amount as Field, nonce as Field]);
    assert(computed_hash == commitment_hash);

    if bid_amount < reserve_price * 2 {
        1u8
    } else if bid_amount < reserve_price * 5 {
        2u8
    } else {
        3u8
    }
}
