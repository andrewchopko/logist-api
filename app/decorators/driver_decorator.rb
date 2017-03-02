class DriverDecorator < Draper::Decorator
	delegate_all

	def as_json *args
		{
			id: id,
			name: name,
			license: license_category
		}
	end
end
