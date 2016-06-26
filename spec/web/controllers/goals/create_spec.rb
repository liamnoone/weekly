require_relative '../../../../apps/web/controllers/goals/create'

RSpec.describe Web::Controllers::Goals::Create do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
