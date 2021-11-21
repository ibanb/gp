
def age_by_day(year, month, day)
    date = Time.now
    current_year = date.year.
    current_month = date.month
    current_day = date.day

    result = current_year - year - 1

    if (current_month > month) ||
       (current_month == month && current_day >= day)
       result += 1
    end

    return result
end

age = age_by_day(1989, 6, 1)

puts age
