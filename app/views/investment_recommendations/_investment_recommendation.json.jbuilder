json.extract! investment_recommendation, :id, :private, :user_id, :tkrsymbol, :body, :created_at, :updated_at
json.url investment_recommendation_url(investment_recommendation, format: :json)
