json.extract! user, :id, :userId, :correctQuestions, :incorrentQuestions, :created_at, :updated_at
json.url user_url(user, format: :json)
