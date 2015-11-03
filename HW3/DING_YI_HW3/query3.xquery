<query3>{
let $items2:=distinct-values(
let $doc := doc("company.xml")

let $items1:=distinct-values(
for $e in $doc//Employee,
    $d in $doc//Division,
    $u in $doc//Department
where   $e/empName = 'Wong'
and    $d/managerEmpId=$e/empId
and     $d/housedDeptId=$u/deptId
return ($u/deptName)
)

for $e in $doc//Employee,
    $d in $doc//Division,
    $u in $doc//Department
where   $e/empName = 'PSmith'
and $u/deptName!=$items1
and    $d/managerEmpId=$e/empId
and     $d/housedDeptId=$u/deptId
return ($u/deptName)
)
return data($items2)}</query3>



