/*
 Nodes:
    The Person node has the label Person and properties:
        name: "Shyam", age: 30...
    The Company node has the label Company and properties:
        name: "Citius healthcare", location: "Kharadi"...
    Relationship:
        The relationship between Shyam and Citius is created with the type WORKS_FOR.
        This relationship includes multiple properties:
            since: 2015 (indicating the starting year)
            role: "Software Engineer" (indicating the job title)..
*/

CREATE (p1:Person {name: "Shyam", age: 30, city: "Pune", email: "shyam@citius.com"})
CREATE (c1:Company {name: "CItius Corp", location: "Kharadi", industry: "HealthTech"})
CREATE (p2:Person {name: "Ram", age: 30, city: "Pune", email: "shyam@citius.com"})
CREATE (c2:Company {name: "Microsoft", location: "Kharadi", industry: "HealthTech"})
CREATE (p1)-[r:WORKS_FOR {since: 2020, role: "Software Engineer", department: "R&D"}]->(c1)


