sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
# sfdx force:source:push
# sfdx force:user:password:generate
# sfdx force:user:permset:assign -n EPB
# sfdx force:org:open -p /lightning/setup/SetupOneHome/home


# sfdx force:org:create -f config/project-scratch-def.json -s -d 1 
sfdx force:source:push
sfdx force:user:permset:assign -n EPB
sfdx shane:data:tree:import -p data/plan.json -d data/

# sfdx force:apex:execute -f scripts/setup.cls

sfdx force:data:bulk:upsert -s Account -f ./data/accounts.csv -i Id -w 2
sfdx force:data:bulk:upsert -s Contact -f ./data/contacts.csv -i Id -w 2

# sfdx force:data:tree:import -p data/accounts.json
# sfdx force:data:tree:import -p data/contacts.json

# sfdx shane:data:tree:import -p data/plan.json -d data/


sfdx force:user:password:generate
sfdx force:org:open