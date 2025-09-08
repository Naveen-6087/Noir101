use dep::std;

fn main(
    leaf: Field,
    sibling: Field,
    parent_sibling: Field,
    is_left_level1: bool,
    is_left_level2: bool
) -> pub Field {
    // Level 1 hash
    let parent = if is_left_level1 {
        std::hash::pedersen_hash([leaf, sibling])
    } else {
        std::hash::pedersen_hash([sibling, leaf])
    };
    
    // Level 2 hash
    let computed_root = if is_left_level2 {
        std::hash::pedersen_hash([parent, parent_sibling])
    } else {
        std::hash::pedersen_hash([parent_sibling, parent])
    };
    
    // Return the computed root
    computed_root
}