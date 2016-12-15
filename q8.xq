for $a in doc("matches.xml")/matches/match
let $loser := if (number($a/teams/team[1]/score) > number($a/teams/team[2]))
then $a/teams/team[2]/@tid
else $a/teams/team[1]/@tid
let $winner := if (number($a/teams/team[1]/score)> number($a/teams/team[2]))
then $a/teams/team[1]/@tid
else $a/teams/team[2]/@tid
let $n :=for $b in doc("teams.xml")/teams/team        
	let $x := $b[@tid = $winner]
        return $x/budget
let $m :=for $b in doc("teams.xml")/teams/team
        let $y := $b[@tid = $loser]
        return $y/budget

let $t := if (number($m)>number($n))
then $a/@mid/string()
else ""
return $t
 

