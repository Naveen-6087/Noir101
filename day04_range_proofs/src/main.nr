fn main(
    secret_value: u32,  // eg: age, salary, score
    min_value: pub u32,       
    max_value: pub u32        
) {
    assert(secret_value >= min_value);
    assert(secret_value <= max_value);
}