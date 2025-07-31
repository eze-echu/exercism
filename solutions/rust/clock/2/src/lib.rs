use std::fmt;
const DAY: isize = 24 * 60;

const HOUR: isize = 60;

#[derive(Debug, Eq, PartialEq)]

pub struct Clock {
    minutes: isize,
}

impl Clock {
    pub fn new(hours: isize, minutes: isize) -> Clock {
        Clock {
            minutes: (
                (
                    (hours * HOUR + minutes) % DAY
                ) + DAY
            ) % DAY,
        }
    }

    pub fn add_minutes(self, minutes: isize) -> Clock {
        Clock::new(0, self.minutes + minutes)
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.minutes / HOUR, self.minutes % HOUR)
    }
}
