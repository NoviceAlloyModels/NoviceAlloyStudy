all c:Class | lone Teaches.c & Teacher
-- div,2
(Teacher <: Teaches).~(Teacher <: Teaches) in iden
-- div,3
all c:Class | lone ((c.~Teaches) & Teacher)
-- div,1
all c : Class | #(Teacher->c & Teaches) < 2
-- div,2
all c:Class | lone t:Teacher | c in t.Teaches
-- div,1
all c:Class | lone t:Teacher | t->c in Teaches
-- div,6
all c : Class, y, z : Teacher | y->c in Teaches and z->c in Teaches implies z = y
-- div,2
all c : Class , t,u : Teacher | t->c in Teaches and u->c in Teaches implies t=u
-- div,1
all x : Class, y,z : Teacher | y->x in Teaches and z->x in Teaches implies y=z
-- div,3
all c : Class, x, y : Teacher | y->c in Teaches and x->c in Teaches implies x=y
-- div,2
all x,y: Teacher, z: Class | x->z in Teaches and y->z in Teaches implies x=y
-- div,1
all c : Class, t, t1 : Teacher | t->c in Teaches and t1->c in Teaches => t = t1
-- div,1
all x:Class, t,t1:Teacher | t->x in Teaches and t1->x in Teaches implies t=t1
-- div,1
all c:Class,p1,p2:Teacher | c in p1.Teaches and c in p2.Teaches implies p1=p2
-- div,1
all p1, p2 : Teacher, c : Class | (p1->c in Teaches and p2->c in Teaches) => p1 = p2
-- div,1
all t1,t2:Teacher, c:Class | (t1->c in Teaches and t2->c in Teaches) => t1=t2
-- div,14
all c:Class,t1,t2:Teacher| t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,44
all c:Class,p1,p2:Teacher | p1->c in Teaches and p2->c in Teaches => p1=p2
-- div,3
all c : Class | all t, x : Teacher | t -> c in Teaches and x -> c in Teaches implies t = x
-- div,1
all c : Class | all x,y : Teacher | x->c in Teaches and y->c in Teaches implies x=y
-- div,1
all c:Class | all t,u : Teacher | t->c in Teaches and u->c in Teaches implies t=u
-- div,2
all c : Class | all y, z : Teacher | y->c in Teaches and z->c in Teaches implies z = y
-- div,1
all t1,t2:Teacher | all c:Class | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,6
all p1, p2 : Teacher | all c : Class | (p1->c in Teaches and p2->c in Teaches) => p1 = p2
-- div,1
all c:Class | all t1,t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,9
not some c :Class | some t1,t2 : Teacher | (t1->c in Teaches and t2->c in Teaches) and t1 != t2
-- div,1
all t1:Teacher,t2:Teacher,c:Class| (t1->c in Teaches and t2->c in Teaches) implies t1=t2
-- div,13
all t : Teacher, y : Teacher | all c : Class | t->c in Teaches and y->c in Teaches implies t=y
-- div,2
all c : Class, p1, p2 : Person | p1 in Teacher and p2 in Teacher and p1 -> c in Teaches and p2 -> c in Teaches => p1 = p2
-- div,1
all c : Class | all p1, p2 : Person | p1 in Teacher and p2 in Teacher and p1 -> c in Teaches and p2 -> c in Teaches => p1 = p2
-- div,1
