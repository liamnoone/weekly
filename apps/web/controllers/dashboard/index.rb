module Web::Controllers::Dashboard
  class Index
    include Web::Action

    expose :current_week

    def call(params)
      @current_week = WeekRepository.current_week
    end
  end
end
