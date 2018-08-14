json.extract! question, :id, :Question_ID, :Problem_Name, :Max_Points, :Submissions, :created_at, :updated_at
json.url question_url(question, format: :json)
