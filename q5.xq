for $a in doc("teams.xml")/teams/team
where   (sum(for $b in doc("players.xml")/players/player
		where $a/player/@pid = $b/@pid
		return $b/salary 
		)) > $a/budget

return $a/name
