module Web::Controllers::Goals
  class Index
    include Web::Action

    expose :week

    def call(params)
      @week = WeekRepository.find(params[:id])
    end
  end
end
