RSpec.describe Week do
  describe '#start_date' do
    let(:week) { Week.new(week: 1, year: 2000) }

    it 'should be a Date object' do
      expect(week.start_date).to be_a Date
    end

    it 'should return the starting date of the week' do
      # the first week of January 2000 begun on the 3rd of January
      expect(week.start_date).to eq(Date.new(2000, 01, 03))
    end

    it 'should be the Monday of the week' do
      expect(week.start_date.monday?).to be true
    end
  end

  describe '#end_date' do
    let(:week) { Week.new(week: 1, year: 2000) }

    it 'should return a Date object' do
      expect(week.end_date).to be_a Date
    end

    it 'should return the date of the end of the working week' do
      # The friday of the first week in January was the 7th
      expect(week.end_date).to eq(Date.new(2000, 1, 7))
    end

    it 'should be the Friday of that week' do
      expect(week.end_date.friday?).to be true
    end
  end
end
