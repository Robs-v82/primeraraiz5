Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '1716507028608244', '2f4cee3ce414dc1450bd78ed37789185'
end