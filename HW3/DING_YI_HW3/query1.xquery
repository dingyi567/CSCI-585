<query1>{
let $doc := doc("company.xml")

for $e in $doc//Employee,
    $w in $doc//WorksFor,
    $d in $doc//Division,
    $u in $doc//Department
where $e/empName= ('Jack','PSmith')
and     $w/percentTime >= 50
and     $e/empId=$w/empId
and     $d/divId=$w/divId
and     $d/housedDeptId=$u/deptId


return data($u/deptName)
}</query1>