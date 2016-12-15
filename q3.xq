
for $b in doc("matches.xml")/matches/match
where some $f in $b/location/country satisfies contains ($b/location/city,$f)
return concat($b/location/city/string()," ",$b/location/country/string())
