# Write methods that return SQL queries for each part of the challeng here
def guest_with_most_appearances
  # write your query here!
  #1. Who did Jon Stewart have on the Daily Show the most?
  # "Fareed Zakaria"	"19 times"
  "SELECT guest_list, count(guest_list) AS \"#_of_times\" FROM csvdb GROUP BY guest_list ORDER BY \"#_of_times\" DESC LIMIT 1"
end
def most_popular_profession
  #2. What was the most popular profession of guest for each year Jon Stewart hosted the Daily Show?
  #"actor"	"1999"	"53 times"
  #"actor"	"2000"	"61 times"
  #"actor"	"2001"	"62 times"
  #"actor"	"2002"	"64 times"
  #"actor"	"2003"	"47 times"
  #"actor"	"2004"	"31 times"
  #"actor"	"2005"	"25 times"
  #"actor"	"2006"	"33 times"
  #"actor"	"2007"	"15 times"
  #"actor"	"2008"	"20 times"
  #"actor"	"2009"	"19 times"
  #"actor"	"2010"	"30 times"
  #"actor"	"2011"	"29 times"
  #"actor"	"2012"	"20 times"
  #"actor"	"2013"	"37 times"
  #"actor"	"2014"	"31 times"
  #"actor"	"2015"	"19 times"
  "SELECT occupation, year, count(occupation) AS total_count FROM csvdb GROUP BY year, occupation ORDER BY year, total_count DESC;"
end
def most_profession_overall
  # 3. What profession was on the show most overall?
  # "actor"	"596"
  "SELECT occupation, count(occupation) FROM csvdb GROUP BY occupation ORDER BY count(occupation) DESC LIMIT 1;"
end
def first_name_bill
  #4. How many people did Jon Stewart have on with the first name of Bill?
# "Bill Bishop"
# "Bill Bradley"
# "Bill Browder"
# "Bill Clinton"
# "Bill Cosby"
# "Bill Dedman"
# "Bill Gates"
# "Bill Goldberg"
# "Bill Hader"
# "Bill Hemmer"
# "Bill Kristol"
# "Bill Maher"
# "Bill Moyers"
# "Bill O' Reilly"
# "Bill O'Reilly"
# "Bill Russell"
# "Bill de Blasio"
# "Billy Bob Thornton"
# "Billy Campbell"
# "Billy Connolly"
# "Billy Crudup"
# "Billy Crystal"
  SELECT guest_list FROM csvdb GROUP BY guest_list HAVING guest_list LIKE 'bill%';
end
def patrick_stewart_appeared
  #5. What dates did Patrick Stewart appear on the show?
  #"4/12/00", "4/21/03", "11/7/13"
  "SELECT show FROM csvdb WHERE guest_list = 'Patrick Stewart';"
end
def year_most_guest
  #6. Which year had the most guests?
  #"2000"	"169 GUESTS"
  "SELECT year, COUNT(guest_list) FROM csvdb GROUP BY year ORDER BY COUNT(guest_list) DESC LIMIT 1;"
end
def most_popular_group
  #7. What was the most popular "Group" for each year Jon Stewart hosted?
  # Media topped for most of the year for 9 years, and acting came 2nd topping for 8 years
  #"Acting"	"1999"	"108"
  #"Acting"	"2000"	"100"
  #"Acting"	"2001"	"92"
  #"Acting"	"2002"	"84"
  #"Acting"	"2003"	"74"
  #"Acting"	"2004"	"51"
  #"Media"	"2005"	"54"
  #"Media"	"2006"	"47"
  #"Media"	"2007"	"47"
  #"Media"	"2008"	"77"
  #"Media"	"2009"	"59"
  #"Media"	"2010"	"50"
  #"Media"	"2011"	"50"
  #"Media"	"2012"	"52"
  #"Acting"	"2013"	"60"
  #"Media"	"2014"	"53"
  #"Acting"	"2015"	"33"

  "SELECT groups, year, COUNT(groups) FROM csvdb GROUP BY groups, year ORDER BY year, COUNT(groups) DESC;"
end
