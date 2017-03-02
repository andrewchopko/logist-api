require 'rails_helper'

describe DriverDecorator do
	
	describe '#as_json' do
		let(:driver) { stub_model Driver, id: 2, name: "Maks Strugatski", license_category: "B,C,D" }

		subject { driver.decorate.as_json }

		its([:id]) { should eq 2 }

		its([:name]) { should eq "Maks Strugatski" }

		its([:license]) { should eq "B,C,D" }
	end

end