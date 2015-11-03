<query2> {
let $doc := doc("company.xml")

for $w in distinct-values($doc//WorksFor/divId),
$d in $doc//Division

let $items :=$doc//WorksFor[divId=$w]
 
 where count($items)=count($doc//Employee)
 and $d/divId=$w

 return data($d/divName)}</query2>

