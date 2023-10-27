function yepordy_init()
{
	//5 total categories (0 thru 4 in array)
	//5 questions for each cat. (100,200,300,400,500 points)
	//points should be kept BY HAND at the party by the host of the yepordy game. NOT IN GAME!
	
	category_name = []
	category_question_name[0,0] = 0
	category_question_answer[0,0] = 0
	
	for (var i = 0; i < 4; i++)
	{
		category_name[i] = "UNNAMED"
		for (var q = 0; q < 4; q++)
		{
			category_question_name[i,q] = "UNNAMED"
			category_question_answer[i,q] = "UNNAMED"
		}
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