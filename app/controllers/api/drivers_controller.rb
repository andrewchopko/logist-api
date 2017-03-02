class Api::DriversController < ApplicationController
	private

	def collection
		@drivers ||= Driver.all
	end

	def resource
		@driver ||= Driver.find params[:id]
	end

end