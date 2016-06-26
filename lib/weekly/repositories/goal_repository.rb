class GoalRepository
  include Hanami::Repository

  class << self
    # public: Find all goals for a given {week_id}
    def for_week(week_id)
      query do
	where(week_id: week_id)
      end
    end
  end
end
