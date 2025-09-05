
fn main(
    birth_year: u32,
    birth_month: u8,
    birth_day: u8,
    current_year: pub u32,
    current_month: pub u8,
    current_day: pub u8,
    minimum_age: pub u8
) {
    assert(birth_month >= 1);
    assert(birth_month <= 12);
    assert(birth_day >= 1);
    assert(birth_day <= 31);
    assert(minimum_age > 0);
    assert(minimum_age <= 130); 
    let mut age_years = current_year - birth_year;
    let birthday_passed = if current_month > birth_month {
        true
    } else if current_month < birth_month {
        false  
    } else {
        current_day >= birth_day
    };
    if !birthday_passed {
        age_years = age_years - 1;
    }
    assert(age_years >= minimum_age as u32);
    assert(birth_year >= 1900);
    assert(birth_year <= current_year);
}