require 'rails_helper'

describe Api::DriversController do

	it { should route(:get, '/api/drivers').to(action: :index) }

	it { should route(:get, '/api/drivers/1').to(action: :show, id: 1) }

end

RSpec.describe Api::DriversController, type: :controller do

	describe '#index.json' do
		before { get :index, format: :json }

		it { should render_template :index }
	end

	describe '#show.json' do
		before { get :show, id: 1, format: :json }

		it { should render_template :show }
	end

	describe '#collection' do
		before { expect(Driver).to receive(:all) }

		it { expect { subject.send :collection }.to_not raise_error }
	end

	describe '#resource' do
		before { expect(subject).to receive(:params).and_return({ id: 1 }) }

		before { expect(Driver).to receive(:find).with(1) }

		it { expect {subject.send :resource }.to_not raise_error }
	end
end
