json.extract! problem, :id, :problem_id, :problem_statement, :flag, :supp_file, :upvote_downvote, :max_points, :successful_submissions, :total_submissions, :dirty_bit, :created_at, :updated_at
json.url problem_url(problem, format: :json)
