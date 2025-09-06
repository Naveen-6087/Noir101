use dep::std;

fn main(
    voter_id: u64,
    vote_choice: u8,
    voter_secret: u64,
    election_id: pub u64,
    min_voter_id: pub u64,
    max_voter_id: pub u64
) -> pub u8 {
    
    // Valid vote
    assert(vote_choice <= 1);
    
    // Valid voter ID
    assert(voter_id >= min_voter_id);
    assert(voter_id <= max_voter_id);
    
    // Simple secret check
    assert(voter_secret == 98765);
    
    // Nullifier for double-vote prevention
    let _nullifier = std::hash::pedersen_hash([voter_id as Field, election_id as Field]);
    
    vote_choice
}