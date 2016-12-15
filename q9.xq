for $a in doc("matches.xml")/matches/match,$b in doc("teams.xml")/teams/team
where $a/@year = 2014 and $a/teams/team/@tid = $b/@tid
                
return $b
