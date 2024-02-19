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

pred inv15 {
all disj s1, s2 : Student |
  		all c : s1.enrolled & s2.enrolled |
          all g1 : s1.(c.grades), g2 : s2.(c.grades) |
                  (some (s1.projects & s2.projects & c.projects) and some g1 and some g2 )implies (g2 in g1.prev or g1 in g2.prev or g1 = g2)
}

pred inv15c {
	all c : Course, p : c.projects, disj x,y : (Person <: projects).p | some c.grades[x] and some c.grades[y] implies c.grades[x] in c.grades[y].(prev+iden+next)
}

check correct { inv15 <=> inv15c}
pred under { inv15 and !inv15c}
pred over { !inv15 and inv15c}
run over 
run under 

