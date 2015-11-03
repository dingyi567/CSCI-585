<query4> {
let $doc := doc("company.xml")

for $e in $doc//Employee

where  count($doc//Division[managerEmpId=$e/empId])=0

order by $e/empName descending

return (data($e/empName),  data($e/empPhone),  data($e/empOffice))

}</query4>

