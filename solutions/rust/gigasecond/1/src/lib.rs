use time::PrimitiveDateTime as DateTime;

const gigasecond: i64 = 1000000000;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    start.checked_add(time::Duration::seconds(gigasecond)).unwrap()
}
