
// Shyam got prompted.
// Change the role to "Senior Software Engineer
MATCH (p:Person {name: "Shyam"})-[r:WORKS_FOR]->(c:Company)
SET r.role = "Senior Software Engineer"
RETURN p, r, c

