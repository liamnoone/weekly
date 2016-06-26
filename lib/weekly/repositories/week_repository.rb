class WeekRepository
  include Hanami::Repository

  class << self
    def current_week
      for_year(current_year_number).for_week(current_week_number).first
    end

    def for_week(week)
      query { where(week: week) }
    end

    def for_year(year)
      query { where(year: year) }
    end

    private

    # private: Find the number of the current week of the year
    # January 1st would be week 1, December 31st would be week 52
    def current_week_number
      current_date = DateTime.now
      current_date.cweek
    end

    # private: Find the number of the current year
    def current_year_number
      current_date = DateTime.now
      current_date.year
    end
  end
end
