%dw 2.0
import * from dw::core::Arrays
var arr = [0,1,2,3,4,5,6,7,8,9]
var employees = [{id: "1", name: "ashok"},{id: "2", name: "patthu"},{id: "3", name: "asp"},{id: "5", name: "ashokpatthu"}]
var students = [{studId: "1", studName: "ap"},{studId: "2", studName: "pa"},{studId: "3", studName: "sai"},{studId: "4", StudName: "prathyusha"}]
output application/json
---
 //join(employees, students, (emp) -> emp.id, (stud) -> stud.id ) 
  {
      details:[
          {
           studempjoin: join(employees, students, (emp) -> emp.id, (stud) -> stud.studId )
          },
          {
            studentempleftjoin: leftJoin(employees, students, (emp) -> emp.id, (stud) -> stud.studId )  
          },
          {
              studempouterJoin: outerJoin(employees, students, (emp) -> emp.id, (stud) -> stud.studId)
          },
          {
              partition: arr partition ((item) -> isEven(item))
          }
      ]
  } 
     