# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight. If the number of
# minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# def constants that won't change
MINUTE_HOUR = 60
HOUR_DAY = 24
MINUTE_IN_DAY = MINUTE_HOUR * HOUR_DAY


def time_of_day(minutes)
  minutes = minutes % MINUTE_IN_DAY
  hours, mins = minutes.divmod(MINUTE_HOUR)
  format('%02d:%02d', hours, mins)
end




p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
