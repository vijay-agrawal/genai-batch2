/*

CYPHER Queries

*/

//find the person with the name "Shyam" and returns his details along with the company 
// he works for and the relationship details.
MATCH (p:Person {name: "Shyam"})-[r:WORKS_FOR]->(c:Company)
// In cypher, RETURN statement is equivalent of printing to output
RETURN p, r, c


// find all companies in San Francisco and return the names of people 
// who work there, along with company name and their role 
MATCH (p:Person)-[r:WORKS_FOR]->(c:Company {location: "San Francisco"})
RETURN p.name AS Person, c.name AS Company, r.role AS Role

// Aggregate the number of people working in the company 
MATCH (p:Person)-[r:WORKS_FOR]->(c:Company)
RETURN c.name AS Company, COUNT(p) AS EmployeeCount

// Aggregate the number of people working in the company, group by role 
MATCH (p:Person)-[r:WORKS_FOR]->(c:Company)
RETURN r.role AS Role, COUNT(p) AS EmployeeCount

// Aggregate the number of people working in the company, group by role 
// only if there is at least one person in that role
MATCH (p:Person)-[r:WORKS_FOR]->(c:Company)
WITH r.role AS Role, COUNT(p) AS EmployeeCount
WHERE EmployeeCount > 1
RETURN Role, EmployeeCount


// print all nodes and relations (visualize entire graph)
// For each person found (n), Neo4j tries to match an outgoing relationship r from that person to any node m.
// the OPTIONAL statement below says if relation is not found, still include n in the output (relation is optional)
// for example, if Ram is not associated with any company, still include Ram in the output
MATCH (n)
OPTIONAL MATCH (n)-[r]->(m)
RETURN n, r, m

