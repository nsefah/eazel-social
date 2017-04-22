Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'WvuytA97nfgWlTEJF0VIJZvYd', '3cIntXKizLnnoC3R5jbU1uLzABODSjMqnVSOJm5QJZYdAhzXRA'
  provider :facebook, '1786458711673175', 'b315dd264312409efda70fa50ba9a418'
end
