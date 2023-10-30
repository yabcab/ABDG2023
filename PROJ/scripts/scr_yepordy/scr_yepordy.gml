function yepordy_init()
{
	//5 total categories (0 thru 4 in array)
	//5 questions for each cat. (100,200,300,400,500 points)
	//points should be kept BY HAND at the party by the host of the yepordy game. NOT IN GAME!
	
	category_name = []
	category_question_name[0,0] = 0
	category_question_answer[0,0] = 0
	crossed_questions[0,0] = 0
	selected_category = 0
	selected_question = 0
	loaded_question = ""
	loaded_answer = ""
	state = 0
	final_question = ""
	final_answer = ""
	q_cross_count = 0
	
	for (var c = 0; c < 4; c++)
	{
		category_name[c] = "UNNAMED"
		for (var q = 0; q < 4; q++)
		{
			category_question_name[c,q] = "UNNAMED"
			category_question_answer[c,q] = "UNNAMED"
			crossed_questions[c,q] = false
		}
	}
	
	enum yepordy_states
	{
		question_selector,
		view_question,
		view_answer,
		view_intro,
		view_rules,
		view_endscreen,
		final_question,
		final_answer,
	}
}

function yepordy_set_category(category_id,name)
{
	category_name[category_id] = category_name
}

function yepordy_set_question(category_id,question_id,question_name,answer)
{
	category_question_name[category_id,question_id] = question_name
	category_question_answer[category_id,question_id] = answer
}

function yepordy_question_is_crossed(category,question)
{
	return crossed_questions[category,question]
}

function yepordy_cross_question(category,question)
{
	crossed_questions[category,question] = true	
	q_cross_count++
}

function yepordy_load_question(category,question)
{
	loaded_question = category_question_name[category,question]
	loaded_answer = category_question_answer[category,question]
}