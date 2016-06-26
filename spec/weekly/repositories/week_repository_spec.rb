RSpec.describe WeekRepository do
  describe '.current_week' do
    before(:each) { WeekRepository.clear }

    it 'should return the Week for the current week of the year' do
      # Instantiate a Week for the 3rd of January 2000
      # January 2000's first week was beginning the 3rd of January
      week = Week.new(week: 1, year: 2000)
      WeekRepository.create(week)

      # Travel to the same week for the week we've created
      Timecop.freeze(2000, 01, 03) do
	current_week = WeekRepository.current_week

	expect(current_week.week).to eq(1)
	expect(current_week.year).to eq(2000)
      end
    end
  end
end
