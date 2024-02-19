open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

pred inv9{
	
  all p:Professor | all pp:Professor-p| some (p.teaches && pp.teaches) => no (pp.enrolled & p.teaches)
}

