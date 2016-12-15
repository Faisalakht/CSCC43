for $a in doc("matches.xml")/matches/match
let $x := for $b in doc("teams.xml")/teams/team
           let $y := for $c in  doc("players.xml")/players/player
		     where $b/player/@pid = $c/@pid and $c/@married = "yes"
		     return $c
          where $a/teams/team/@tid = $b/@tid
	  return $y
let $t := count($x[@married = "yes"])
return concat("MID= ",$a/@mid/string()," Number of players married = ",$t)
