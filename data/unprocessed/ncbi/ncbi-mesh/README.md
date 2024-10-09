https://www.nlm.nih.gov/databases/download/mesh.html



(jq '.DescriptorRecordSet.DescriptorRecord' < test.json) > test.json.p


mongoimport --db crossref --collection mesh  --authenticationDatabase admin --username user_username --password user_password --file test.json.p --jsonArray
