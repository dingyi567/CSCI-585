<query6>{
let $doc := doc("company.xml")

let $maximum:=max(
for $w in distinct-values($doc//WorksFor/empId)
let $items:= $doc//WorksFor[empId=$w]
return count($items)
)

for $e in $doc//Employee,
$w1 in distinct-values($doc//WorksFor/empId)
let $items1:= $doc//WorksFor[empId=$w1]
where count($items1)=$maximum
and $e/empId=$w1
return (data($e/empName), data($e/empPhone), data($e/empOffice))
}</query6>


