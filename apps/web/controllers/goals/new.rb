module Web::Controllers::Goals
  class New
    include Web::Action

    expose :week

    def call(params)
      @week = WeekRepository.find(params[:week_id])
    end
  end
end
