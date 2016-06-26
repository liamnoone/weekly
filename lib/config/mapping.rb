collection :weeks do
  entity     Week
  repository WeekRepository

  attribute :id,   Integer
  attribute :week, Integer
  attribute :year, Integer
end

collection :goals do
  entity     Goal
  repository GoalRepository

  attribute :id,      Integer
  attribute :week_id, Integer

  attribute :name,        String
  attribute :description, String
  attribute :status,      String
end
