json.array!(@diaries) do |diary|
  json.extract! diary, :id, :User_prof_id, :title, :content, :user_prof_id
  json.url diary_url(diary, format: :json)
end
