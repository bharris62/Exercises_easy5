# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.
HOUR_IN_DAY = 24
MIN_IN_HOUR = 60
MINUTE_IN_DAY = HOUR_IN_DAY * MIN_IN_HOUR

def after_midnight(str)
  hours, minutes = str.split(':').map(&:to_i)
  (hours * MIN_IN_HOUR + minutes) % MINUTE_IN_DAY
end

def before_midnight(str)
  change_min = MINUTE_IN_DAY - after_midnight(str)
  change_min = 0 if change_min == MINUTE_IN_DAY
  change_min
end





p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
