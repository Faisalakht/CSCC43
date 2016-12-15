for $t in doc("teams.xml")/teams/team
let $x := sum(
		for $p in doc("players.xml")/players/player
		where $t/player/@pid = $p/@pid
		return $p/salary 
		) 
where $x > $t/budget
return concat("", $t/name)
