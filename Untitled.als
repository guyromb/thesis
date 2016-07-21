sig Student { }
sig Submission { }
one sig Course {
	roster: set Student,
	work: roster -> lone Submission
}

fact mustBeEnrolled {
all c: Course, s: Student |
s in c.roster
}

run {} for 3
