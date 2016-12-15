for $b in doc("players.xml")/players/player
where $b/nationality/count(country) > 1
return concat($b/@fname/string()," ",$b/@lname/string())

