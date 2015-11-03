<query5> {
let $doc := doc("company.xml")

let $average:=avg(
for $w in distinct-values($doc//WorksFor/empId)
let $items:= $doc//WorksFor[empId=$w]
return data(count($items))
)
return $average}</query5>