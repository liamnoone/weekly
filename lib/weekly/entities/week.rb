class Week
  include Hanami::Entity

  attributes :week, :year

  # public, association: Gets all goals for this week
  def goals
    GoalRepository.for_week(self.id)
  end

  # public: Returns the date of the start of the week.
  # The week begins on Monday
  def start_date
    Date.commercial(self.year, self.week, 1)
  end

  # public: Returns the data of the end of the week
  # The week ends on Friday
  def end_date
    Date.commercial(self.year, self.week, 5)
  end
end
