distinct-values(for $b in doc("matches.xml")/matches/match
let $loser := if (number($b/teams/team[1]/score)>number($b/teams/team[2]/score))
then $b/teams/team[2]
else $b/teams/team[1]

let $x := for $a in doc("teams.xml")/teams/team
          let $y := for $c in doc("players.xml")/players/player
                    where $a/player/@pid = $c/@pid and $c/salary >100000
                    return $c/@pid
	  where $a/@tid = $loser/@tid
	  return $y

return $x/string())
