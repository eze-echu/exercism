use std::fmt;
use std::fmt::Display;

#[derive(Debug, PartialEq)]
pub struct Clock {
    hours: i32,
    minutes: i32,
}
impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let mut rollover = 0;
        if minutes < 0 {
            rollover = (minutes / 60) - 1;
        }else {
            rollover = minutes / 60;
        }
        Clock {
            hours: Clock::roll_over_hour(hours + rollover),
            minutes: Clock::roll_over_minute(minutes),
        }
    }

    fn roll_over_hour(hours: i32) -> i32{
        if hours < 0 {
            24 + hours % 24
        } else {
            hours % 24
        }
    }

    fn roll_over_minute(minutes: i32) -> i32{
        if minutes < 0 {
            60 + minutes % 60
        } else {
            minutes % 60
        }
    }

    pub fn add_minutes(&mut self, minutes: i32) -> Self {
        self.minutes = (self.minutes + minutes) % 60;
        let mut rollover = 0;
        if self.minutes < 0 {
            rollover = (minutes / 60) - 1;
        }else {
            rollover = minutes / 60;
        }
        self.hours = (self.hours + rollover) % 24;
        Clock {
            hours: Clock::roll_over_hour(self.hours),
            minutes: Clock::roll_over_minute(minutes),
        }
    }
}
impl Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.hours, self.minutes)
    }
}