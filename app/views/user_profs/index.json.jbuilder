json.array!(@user_profs) do |user_prof|
  json.extract! user_prof, :id, :name, :age, :male
  json.url user_prof_url(user_prof, format: :json)
end
