for $a in doc("teams.xml")/teams/team , $b in doc("players.xml")/players/player
where $a/coach/@cid = $a/player/@pid and ($a/coach/@cid = $b/@pid)
return concat($b/@fname/string()," ", $b/@lname/string()," ",$b/salary/string()," ",$a/name/string()) 
