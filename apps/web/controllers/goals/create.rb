module Web::Controllers::Goals
  class Create
    include Web::Action

    expose :goal

    params do
      param :goal do
        param :name, presence: true
        param :description, presence: true
        param :status, presence: true
        param :week_id, presence: true
      end
    end

    def call(params)
      if params.valid?
        @goal = GoalRepository.create(Goal.new(params[:goal]))
        redirect_to routes.goals_path(week_id: @goal.week_id)
      end
    end
  end
end
